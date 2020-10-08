import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/one/cap_one.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapOneIntro extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    builder: (context) => Home(),
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
              semanticLabel: 'próximo capítulo',
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CapOne()));
            },
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/falcon.png',
                      width: null, height: 200),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Você já pensou em viajar na velocidade da luz?",
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
                  EdgeInsets.only(top: 15, left: 26, right: 26, bottom: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Tenha certeza que você não foi o único! Albert Einstein também pensou! Claro que Einstein não imaginou a tecnologia da espaçonave Millenium Falcon, mas ele realizou experiências de pensamento extraordinárias (Gedankenexperiment), que elucidaram as questões de como seria viajar na velocidade da luz. Aliás, o comportamento da luz foi um dos problemas que tirava o sono de Albert. Também, a inconsistência da Mecânica Newtoniana para eventos próximos a velocidade da luz, geravam desconforto nos estudos de Einstein. Essas reflexões iniciaram quando ele ainda era muito jovem, o que mais tarde o levaram à enunciação dos postulados da Teoria da Relatividade Restrita.",
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
