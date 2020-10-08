import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/four/cap_four.dart';
import 'package:guia_app/screen/chapters/two/cap_two2.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapThree extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 3",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
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
                  MaterialPageRoute(
                    builder: (context) => CapTwo2(),
                  ),
                );
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
                MaterialPageRoute(
                  builder: (context) => CapFour(),
                ),
              );
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
              padding: EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "As consequências dos postulados de Einstein",
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
                  EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       A base da teoria especial da relatividade está nos seus dois postulados que diz que a velocidade da luz tem o mesmo valor para todos os observadores, independente do estado de movimento deles e estabelece que as leis físicas são expressas pelas mesmas equações em todos os referenciais inerciais, por esse motivo é chamada relatividade especial ou restrita, porque só se aplica a corpos que se movem em velocidade constante (MATSUURA, 2003), portanto, toda a construção lógica da teoria dá-se em torno da combinação desses dois postulados.",
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
                  Image.asset('assets/images/board.png',
                      width: 370, height: 180),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       As consequências dos postulados têm grande importância no estudo do tempo e espaço.\n       A partir do próximo tópico vamos discutir algumas dessas consequências, entre elas: a ideia da simultaneidade, a dilatação do tempo, a relatividade do comprimento e a energia relativística.",
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
          ],
        ),
      ),
    );
  }
}
