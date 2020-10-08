import 'package:flutter/material.dart';
import 'package:guia_app/screen/about.dart';
import 'package:guia_app/screen/chapters/five/cap_five.dart';
import 'package:guia_app/screen/chapters/four/cap_four.dart';
import 'package:guia_app/screen/chapters/one/cap_one_intro.dart';
import 'package:guia_app/screen/chapters/seven/cap_seven.dart';
import 'package:guia_app/screen/chapters/six/cap_six.dart';
import 'package:guia_app/screen/chapters/three/cap_three.dart';
import 'package:guia_app/screen/chapters/two/cap_two.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/screen/list_all_atvd.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (page == 0) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home()));
          }
          if (page == 1) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapOneIntro()));
          }
          if (page == 2) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapTwo()));
          }
          if (page == 3) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapThree()));
          }
          if (page == 4) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapFour()));
          }
          if (page == 5) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapFive()));
          }
          if (page == 6) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapSix()));
          }
          if (page == 7) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CapSeven()));
          }
          if (page == 8) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ListAll()));
          }
          if (page == 9) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => About()));
          }
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 32.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 32.0,
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
