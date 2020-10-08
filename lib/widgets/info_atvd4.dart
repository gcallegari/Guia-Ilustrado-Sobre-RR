import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InfoAtvd4 extends StatelessWidget {
  String quest1;
  String quest2;


  InfoAtvd4({
    this.quest1,
    this.quest2,
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
                      "Atividade 4\n",
                      semanticsLabel: 'Atividade 4',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F81C7),
                        fontFamily: 'Poppins',
                      ),
                    ),

                  Text(
                    "1. Supondo que uma nave espacial possui 10m de comprimento quando ela está em repouso na Terra. Com a nave em movimento com velocidade v igual a 80% da velocidade da luz c, um observador fixo na Terra, dispondo de aparelhagem adequada, efetua a medida do comprimento da nave. (GUIMARÃES, 2016, p. 198)\n\na) Qual é o resultado obtido pelo observador fixo na Terra?",
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
                    "b) Qual é o comprimento da nave medido por um tripulante da nave?",
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
                  
                ],
              ),
            ),
          ],
        ),
    );
  }
}