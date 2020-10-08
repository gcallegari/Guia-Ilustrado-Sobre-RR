import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/five/cap_five.dart';
import 'package:guia_app/screen/chapters/four/cap_four_atv.dart';
import 'package:guia_app/screen/chapters/three/cap_three.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapFour extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 4",
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
                    builder: (context) => CapThree(),
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
                  builder: (context) => AtvdTwo(),
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
                    "Sincronização de relógios e simultaneidade",
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
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/clocks.png',
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
                    "        “Quando dizemos que algum evento acontece num determinado instante, estamos dizendo que aquele evento acontece quando o relógio indica tal instante. Por isso, a medição do tempo envolve simultaneidade entre o evento observado e a indicação de um horário específico por um relógio, que também é um evento”. (MATSUURA, 2003)\n       O tempo em cada evento deve ser medido com um relógio diferente e o intervalo é dado pela subtração dos tempos medidos. Para isso os relógios devem ser sincronizados. (TIPLER, MOSCA, 2017)\n       Dois eventos são simultâneos quando ocorrem ao mesmo instante de tempo. Mas, o que significa “ocorrer ao mesmo tempo”?\n        Vejamos um evento bem cotidiano, como quando muitas pessoas veem um gol num estádio de futebol e outras pela televisão, não há simultaneidade. E, você já deve ter percebido a relatividade da simultaneidade em transmissões de TV quando o mesmo programa se realiza em locais diferentes e a comunicação ocorre via satélite. Mas, essa relatividade da simultaneidade não se limita somente a esses eventos. (GASPAR, 2016)",
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
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "- Dois eventos podem ocorrer simultaneamente para um observador, mas não para outro?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
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
                    "        Como já foi dito anteriormente, Einstein fazia experiências de pensamento, idealizando sistemas e eventos para desenvolver sua teoria. Uma dessas experiências, proferidas por ele, é a de um trem se movendo",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "com velocidade ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Color(0xFF444444),
                        ),
                      ),
                      Image.asset('assets/images/vetor.png',
                          width: 10, height: 15),
                      Text(
                        " e passa pela ",
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
                    "plataforma de uma estação, quando é atingido por raios em suas extremidades.\n       “Uma pessoa parada em uma estação, diz ter visto dois raios caírem ao mesmo tempo, sendo um em cada extremidade do trem que passava pela estação. Já outra pessoa, dentro do trem, tem a certeza de que um raio caiu na parte da frente do trem e, posteriormente, o outro raio caiu na parte traseira. As duas pessoas estão convictas de suas observações.\n       - Qual delas tem razão em relação à queda dos raios?",
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
              padding: EdgeInsets.only(top: 0, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/tremSimult.png',
                      width: 400, height: 200),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Analisando a ilustração temos dois raios que atingem as duas extremidades do trem A’ e B’, e o solo nos pontos A e B. Dentro do trem está uma pessoa que se move com o trem. Ela está na metade da distância entre A’ e B’. Outra pessoa está na metade do segmento que liga os pontos A e B.\n       Ambos observam a luz emitida pelos raios, supondo que os raios que atingiram o solo, atinjam simultaneamente a pessoa que está no ponto 0. A pessoa que está no trem admite que os raios atingiram a pessoa (0) que está na estação no mesmo instante, porém, não concorda que a luz dos raios tenha sido emitida simultaneamente dos pontos atingidos pelos raios.\n       Os dois concordam que a luz dos raios não atinge a pessoa (0’) que está dentro do trem no mesmo instante. Como 0’ desloca-se para a direita junto com o trem, de modo que ela encontra a luz do raio proveniente de B’ antes da luz do raio proveniente de A’ atingi-la. Entretanto, como ela está no meio do vagão, se os dois raios atingissem simultaneamente as extremidades do vagão, a luz dos raios deveria levar o mesmo tempo para chegar até ela, porque percorreriam a mesma distância com velocidade c (2º postulado). Mas, ela conclui que um raio atingiu B’ antes de o outro atingir A’, ou seja, os eventos não são simultâneos para ela. Para a pessoa que está em 0, observa que os dois eventos ocorrem simultaneamente.\n       Portanto, dois eventos podem ou não ser simultâneos, dependendo do estado de movimento do observador. A simultaneidade não é um conceito absoluto.",
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
