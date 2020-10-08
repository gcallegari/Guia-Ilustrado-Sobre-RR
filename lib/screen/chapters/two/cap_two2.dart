import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/four/cap_four_atv.dart';
import 'package:guia_app/screen/chapters/three/cap_three.dart';
import 'package:guia_app/screen/chapters/two/cap_two.dart';
import 'package:guia_app/screen/chapters/two/cap_two_atv.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapTwo2 extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 2",
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
                    builder: (context) => CapTwo(),
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
                  builder: (context) => AtvOne(),
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
                    "Fornecendo alguns dados para esses dois sistemas apresentados (Figuras 1 e 2), fazemos uma análise em linguagem matemática!\n\nNão esquecendo que:",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w500,
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
                  Image.asset('assets/images/ovniNeno1.png',
                      width: 200, height: 200),
                  Text(
                    "S' = Espaço em movimento",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
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
                  Image.asset('assets/images/milaObs.png',
                      width: 200, height: 200),
                  Text(
                    "S = Observador na Terra",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Color(0xFF444444),
                    ),
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
                    "       -  Anotamos para o movimento da espaçonave (S’) uma velocidade de 1000 m/s com relação ao observador (S) que está na Terra (Fig. 1):\n\n                       𝑣𝑆′/𝑆 = 1000 𝑚/𝑠.\n\n       - Apontamos para o movimento do míssil (M) uma velocidade 2000 m/s com relação a espaçonave (S’):\n\n                       𝑣𝑀/𝑆′ = 2000 𝑚/𝑠.\n\n       - Conforme a mecânica newtoniana, o observador na Terra verifica a velocidade do movimento do míssil:\n\n   𝑣𝑀/𝑆 = 2000 𝑚/𝑠 + 1000 𝑚/𝑠 = 3000 𝑚/𝑠.\n\n       - Na Figura 2 temos o disparo de um feixe de luz (L). Nesta situação a equação referente a velocidade do feixe de luz com relação a espaçonave é:\n\n                              𝑣𝐿/𝑆′ = 𝑐.\n\n       - Seguindo a ideia da situação da Figura 1, a velocidade do feixe de luz com relação ao observador:\n\n                   𝑣𝐿/𝑆 = 𝑐 + 1000 𝑚/𝑠 = ?\n\n       Já de antemão podemos afirmar que um observador inercial não pode se deslocar com a velocidade da luz c no vácuo. O que nos leva a conclusão de que a mecânica newtoniana consegue descrever movimentos cotidianos, mas se equivoca quando tenta descrever fenômenos com velocidades próximas da velocidade da luz c. Portanto, o sinal de interrogação na Figura 2, expressa uma contradição da mecânica newtoniana com relação ao 2º postulado. (YOUNG, FREEDMAN, 2009)",
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
