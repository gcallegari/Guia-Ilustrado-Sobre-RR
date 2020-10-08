import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/five/cap_five2.dart';
import 'package:guia_app/screen/chapters/seven/cap_seven.dart';
import 'package:guia_app/screen/chapters/six/cap_six_atv.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapSix extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 6",
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
                    builder: (context) => CapFive2(),
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
                  builder: (context) => AtvdFour(),
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
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Relatividade do comprimento",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(left: 26, top: 20, bottom: 20, right: 26),
              child: Column(
                children: <Widget>[
                  Text(
                    "        Já de antemão devemos observar que a relatividade do comprimento está intimamente relacionada com a dilatação temporal, uma vez que a dilatação do tempo consiste na mudança de intervalo de tempo entre dois eventos devido à diferença do referencial inercial em que cada um é medido. E, a distância entre dois pontos também depende do referencial inercial onde se realiza a medição. Sendo assim, para nossa surpresa veremos que os comprimentos se contraem com o movimento, observando que a contração só ocorre na direção do movimento.\n       Vamos entender como acontece a contração do comprimento relativístico. Marco e Fabrício nos ajudam a descrever matematicamente o sistema:",
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
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/fabricio.png',
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 26, top: 10, bottom: 0, right: 26),
              child: Column(
                children: <Widget>[
                  Text(
                    "        Temos uma régua que está em repouso no sistema de referência S’ de Marco. Um pulso de luz é emitido por uma fonte que percorre uma distância 𝐿0 da fonte de luz até um espelho.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/fabricioMarco.png',
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "    A régua se desloca com velocidade",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset('assets/images/vetor.png',
                          width: 10, height: 15),
                      Text(
                        " no sistema de referência S de ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Color(0xFF444444),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Fabrício. O pulso de luz percorre uma distância L (o comprimento da régua medido em S mais uma distância adicional 𝑣∆𝑡𝐿  desde a fonte de luz até o espelho.",
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
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 20),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/eq8.png',
                  ),
                  Image.asset(
                    'assets/images/eq10.png',
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
