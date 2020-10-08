import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/one/cap_one.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class About extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Container(
            child: FlatButton(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.arrow_back_ios,
                size: 22,
                color: Color(0xFF1F81C7),
                semanticLabel: 'voltar',
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Sobre a Autora",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding:
                  EdgeInsets.only(top: 15, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Milena Teixeira da Rosa é professora licenciada em Física pela Universidade Federal de Santa Maria - UFSM e mestranda pela Universidade Federal do Rio Grande do Sul – UFRGS, no programa Mestrado Nacional Profissional em Ensino de Física – MNPEF.\n       Natural de Quaraí, RS, vivendo atualmente na cidade  de Capão da Canoa, RS, onde leciona Física no Ensino Médio em uma escola pública estadual.\n       Por gostar demais de seus animais de estimação, principalmente  dos gatos, incluiu um dos mais participativos durante seus estudos e trabalhos em casa -  o gatinho Neno.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/about.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
