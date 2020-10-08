import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InfoAtvd1 extends StatelessWidget {
  String quest1;
  String quest2;
  String quest3;

  InfoAtvd1({
    this.quest1,
    this.quest2,
    this.quest3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      "Atividade 1\n",
                      semanticsLabel: 'Atividade 1',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F81C7),
                        fontFamily: 'Poppins',
                      ),
                    ),

                  Text(
                    "1. Qual grandeza tem o mesmo valor quando medida por dois observadores, qualquer que seja a velocidade relativa uniforme entre eles?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w200,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "$quest1\n",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF444444),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "2. A Mecânica Newtoniana poderia ser comprovada no interior de um vagão de um trem que se encontra em movimento retilíneo uniforme (MRU)? Justifique:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w200,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "$quest2\n",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF444444),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "3. Imagine que você está num trem com velocidade constante, em MRU, com as janelas fechadas. Seu celular toca e um amigo pergunta pra você: o trem está parado ou em movimento?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w200,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "$quest3",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF444444),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}