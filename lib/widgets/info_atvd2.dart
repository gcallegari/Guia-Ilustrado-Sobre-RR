import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InfoAtvd2 extends StatelessWidget {
  String quest1;
  String quest2;
  String quest3;

  InfoAtvd2({
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
                      "Atividade 2\n",
                      semanticsLabel: 'Atividade 2',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F81C7),
                        fontFamily: 'Poppins',
                      ),
                    ),

                  Text(
                    "1. (Adaptação TORRES, 2016, p. 189) Uma árvore e um poste estão distantes 3 km entre si. Cada um deles é atingido por um raio, e os eventos “um raio atinge uma árvore” (𝑅𝑎) e “um raio atinge um poste” (𝑅𝑝) são vistos por dois observadores. Alexandre, parado em um ponto do solo equidistante da árvore e do poste, vê os dois eventos no exato instante em que Murilo passa à sua frente. Murilo está em movimento uniforme ao longo da reta definida pela árvore e pelo poste e no sentido da árvore para o poste. Pergunta-se:\na) Os eventos (𝑅𝑎) e (𝑅𝑝) foram gerados simultaneamente? Justifique:",
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
                    "b) Murilo vê o evento (𝑅𝑎) ocorrer antes de (𝑅𝑝), depois de (𝑅𝑝) ou vê os dois simultaneamente? Justifique:",
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
                    "2. (Adaptação GASPAR, 2016, p. 221) Uma das consequências dos postulados de Einstein, trata sobre a relatividade da simultaneidade. Mas agora, no momento em que você está lendo esta questão, outras pessoas certamente estão fazendo outras coisas. Você e elas estão fazendo uma porção de coisas simultaneamente? Explique:",
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