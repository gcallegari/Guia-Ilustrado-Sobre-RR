import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/one/cap_one2.dart';
import 'package:guia_app/screen/chapters/one/cap_one_intro.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapOne extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 1",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Color(0xFF1F81C7),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          Container(
            child: FlatButton(
              padding: EdgeInsets.only(left: 80),
              child: Icon(
                Icons.arrow_back_ios,
                size: 22,
                color: Color(0xFF1F81C7),
                semanticLabel: 'voltar',
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => CapOneIntro()));
              },
            ),
          ),
          FlatButton(
            child: Icon(
              Icons.arrow_forward_ios,
              size: 22,
              color: Color(0xFF1F81C7),
              semanticLabel: 'próximo capitulo',
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CapOne2()));
            },
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Column(
                children: <Widget>[],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/evolution.png',
                      width: 400, height: 200),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Evolução da teoria",
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
                  EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Sabemos que não podemos voltar no tempo, mas vamos retornar uns séculos atrás, para reconhecermos um pouco sobre a evolução da teoria relativística.\n        Um dos ramos da Física é a Mecânica, que estuda os movimentos dos corpos no mundo macroscópico ao longo do tempo e suas causas. Esse estudo é tratado há muitos séculos.\n        Na Grécia antiga destacaram-se vários estudiosos, dentre eles o filósofo Aristóteles (384 – 322) com suas contribuições, principalmente no que diz respeito à Astronomia, relacionadas ao movimento dos astros celestes. Ele propôs o Sistema Geocêntrico, que depois foi aperfeiçoado por Cláudio Ptolomeu, que afirmava que a Terra era o centro do Universo. Nessa época acreditavam que a Terra era o único referencial inercial, não existindo a ideia de relatividade do movimento. Somente na Idade Média, o conceito de relatividade foi enunciado por Giordano Bruno e Galileu Galilei. (LIMA, 2013)\n       A contribuição de Aristóteles é bastante rudimentar, com carência da matemática, pois ele não fazia cálculos. Também sua atividade experimental, em muitos casos, não conciliava com seus argumentos.  Mas, por muitos séculos foi um modelo para a compreensão do movimento no mundo. (ROVELLI, 2017)",
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
              padding: EdgeInsets.only(top: 0, bottom: 20),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/ari.png', width: 400, height: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
