import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InfoAtvd3 extends StatelessWidget {
  String quest1;

  InfoAtvd3({
    this.quest1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Atividade 3\n",
                  semanticsLabel: 'Atividade 3',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1F81C7),
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  "1. Vamos supor que uma espaçonave é enviada para uma estação espacial com velocidade constante de 80% da velocidade da luz c, em relação à Terra, transportando um astronauta. Em relação à espaçonave, o tempo transcorrido entre o lançamento e a chegada na estação espacial foi de 3 anos. Qual é o tempo transcorrido considerando o referencial na Terra?",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
