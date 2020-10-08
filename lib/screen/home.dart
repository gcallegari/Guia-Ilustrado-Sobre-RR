import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/chapters/one/cap_one_intro.dart';
import 'package:guia_app/screen/login.dart';
import 'package:guia_app/widgets/custom_drawer.dart';
import 'package:scoped_model/scoped_model.dart';

class Home extends StatelessWidget {
  final _pageController = PageController();
  UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   elevation: 0,
      //   // actions: <Widget>[
      //   //   Container(
      //   //     child: FlatButton(
      //   //       padding: EdgeInsets.only(left: 80),
      //   //       child: Icon(
      //   //         Icons.arrow_back_ios,
      //   //         size: 22,
      //   //         color: Color(0xFF1F81C7),
      //   //         semanticLabel: 'voltar',
      //   //       ),
      //   //       onPressed: () {},
      //   //     ),
      //   //   ),
      //   //   FlatButton(
      //   //     child: Icon(
      //   //       Icons.arrow_forward_ios,
      //   //       size: 22,
      //   //       color: Color(0xFF1F81C7),
      //   //       semanticLabel: 'próximo capitulo',
      //   //     ),
      //   //     onPressed: () {
      //   //       Navigator.of(context).pushReplacement(
      //   //         MaterialPageRoute(
      //   //           builder: (context) => CapOneIntro(),
      //   //         ),
      //   //       );
      //   //     },
      //   //   ),
      //   // ],
      // ),
      drawer: CustomDrawer(_pageController),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          if (model.isLoggedIn() != true) return Login();

          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/home1.jpeg',
                      ),
                      Image.asset(
                        'assets/images/home2.jpeg',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Text(
                    "Vamos começar!",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  color: Color(0xFFFF748D),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => CapOneIntro(),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
