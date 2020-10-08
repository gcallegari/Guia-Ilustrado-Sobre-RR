import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/one/cap_one.dart';
import 'package:guia_app/screen/chapters/two/cap_two2.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapTwo extends StatelessWidget {
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
                    builder: (context) => CapOne(),
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
                  builder: (context) => CapTwo2(),
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
                    "Os Postulados de Einstein",
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
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "-> A Teoria da Relatividade Restrita está atrelada a dois postulados:\n\n 1º - As leis físicas devem ser as mesmas em qualquer referencial inercial;\n\n 2º - A velocidade da luz no vácuo deve ser sempre a mesma em qualquer sistema de referência inercial.\n",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Text(
                    "       Para exemplificar o 1º postulado da teoria, também denominado princípio da relatividade, descreveremos uma situação em que uma pessoa está dentro de um trem. Vamos chamá-lo de Robert.",
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
                  Image.asset('assets/images/trem.png',
                      width: 400, height: 300),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Em outras palavras, o postulado 1 nos diz que o movimento uniforme absoluto não pode ser detectado e que todas as leis são as mesmas em todos os referenciais inerciais, isso tanto para os fenômenos da Eletrodinâmica como para os da Mecânica.\n       O 2º postulado trata sobre a propriedade comum a todas as ondas eletromagnéticas, no caso da luz implica que cada observador mede o mesmo valor para a velocidade da luz, independentemente do movimento relativo entre a fonte e o observador.\n       Esse postulado refere-se à constância da velocidade da luz no vácuo, ou seja, a velocidade da luz no vácuo é sempre a mesma em qualquer sistema de referência inercial, e não depende da velocidade da fonte.\n       Vejamos uma espaçonave, que vamos identificar por S’, movendose com velocidade (𝑉𝑆′/𝑆) em relação a um observador (S) na Terra. É disparado dessa espaçonave um míssil.",
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
              padding: EdgeInsets.only(top: 20, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/nenoAlien.png',
                      width: 400, height: 250),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Agora, vejamos uma espaçonave S’ movendo-se com velocidade (𝑉𝑆′/𝑆) em relação a um observador (S) na Terra. Dessa espaçonave é disparado um feixe de luz.",
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
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/nenoAlien2.png',
                      width: 400, height: 250),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
