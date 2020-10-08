import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/one/cap_one2.dart';
import 'package:guia_app/screen/chapters/two/cap_two.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapOne3 extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => CapOne2()));
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
                  MaterialPageRoute(builder: (context) => CapTwo()));
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
                    "Mas, antes de passarmos para o próximo capítulo, vamos ver um resumo da biografia de Albert!",
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
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/einstein_kiddo.png',
                      width: 400, height: 150),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 26, right: 26),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Albert Einstein nasceu em 14 de março de 1879, em Ulm, na Alemanha.\n        Aos cinco anos, ele ganhou de seu pai uma bússola, fato esse que marcaria sua vida, pois passou dias a fio observando a agulha que sempre apontava para a mesma direção. Isso causou-lhe um grande deslumbramento (VIEIRA, 2003), levando-o a questionamentos de como o magnetismo terrestre atravessava o espaço.\n        Ainda muito jovem, enquanto passeava de bicicleta, Einstein via-se viajando pelo espaço, cavalgando um raio de luz.\n       Passou sua infância em Munique e por gostar de imaginar coisas, desde cedo aprendeu a ser autodidata. Em 1900, forma-se professor de Matemática e Física pela Escola Politécnica de Zurique. Isso, não lhe rendeu sucesso na carreira, pois, sua trajetória intelectualmente produtiva deu-se no Departamento de Patentes em Berna (Suíça). Nesse emprego exercia atividade de análise de propostas de invenções. Era um trabalho que não lhe tomava todo o tempo, oportunizando que realizasse suas pesquisas. Tanto que retomou as questões que lhe tiraram o sono na infância - viajar com a luz, o que o levaria a concluir, através de seus experimentos mentais, “que o tempo para e o espaço, na direção do movimento, se contrai até o anulamento. Enfim, o tempo e o espaço a que temos acesso empírico, não são absolutos, mas relativos ao nosso estado de movimento”. (MATSUURA, 2003, p. 43)",
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
                  Image.asset('assets/images/einstein2.png',
                      width: 340, height: 180),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Albert, corroborando a ideia de Galileu, relativizou o espaço e o tempo em relação ao observador, concluindo que o movimento da luz e de corpos com velocidades relativísticas (próximas a velocidade da luz) estariam todos sob as mesmas leis físicas para sistemas inerciais. (ROVELLI,2017)\n       Então, em 1905, Einstein publica três importantíssimos artigos: um sobre o movimento browniano de pequenas partículas em suspensão num líquido; outro sobre o efeito fotoelétrico e o terceiro introduzia a Teoria da Relatividade Restrita.",
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