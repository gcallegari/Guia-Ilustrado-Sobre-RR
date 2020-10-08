import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/one/cap_one.dart';
import 'package:guia_app/screen/chapters/one/cap_one3.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapOne2 extends StatelessWidget {
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
                  builder: (context) => CapOne3(),
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
                    "''A condição natural dos corpos não é o repouso, mas o movimento. (GALILEU)''",
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
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/galileu.png',
                      width: 400, height: 200),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Galileu Galilei, que viveu entre os séculos XVI e XVII, já fazia os primeiros ensaios relativísticos ao aplicar o princípio da relatividade no estudo da Cinemática, onde observou a necessidade de considerar o movimento dos corpos a partir de diferentes referenciais. Com seus estudos expressou as “transformadas galileanas” para posição e velocidade.\n        Galileu com sua luneta viu coisas que os demais ainda não imaginavam, como os anéis em torno de Saturno, as montanhas na Lua, as fases de Vênus, os satélites ao redor de Júpiter...\n        Ele em toda a sua obra propôs novas explicações sobre a natureza. Em relação ao movimento dos corpos, Galilei fez a seguinte interpretação: “Nenhum corpo seria mais móvel ou imóvel, mas estaria em movimento ou repouso em relação a outros corpos” (BRAGA, 2010, p. 87 e 89).\n       Credita-se a ele o início da ideia de inércia. E, é ele quem define pela primeira vez o significado de referencial inercial.\n       Isaac Newton (1643 – 1727), que nasceu um ano após a morte de Galileu (1564 - 1642), baseou-se naquele princípio para formular suas leis para a Mecânica Clássica, as famosas Leis de Newton, descrevendo os fenômenos físicos como uma sequência de eventos inseridos em três dimensões, considerando espaço e tempo como conceitos independentes. Embora as leis da Mecânica Newtoniana sejam válidas para a maioria dos eventos que observamos, ela não consegue descrever eventos com velocidades próximas a velocidade da luz.",
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
                  Image.asset('assets/images/apple.png',
                      width: 340, height: 340),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Para Newton todo corpo permanece em seu estado de repouso ou de movimento retilíneo uniforme (MRU), a menos que forças modifiquem esses estados, ou seja, um corpo permanecerá em repouso ou em velocidade constante inicial. No caso de dois referenciais inerciais se movendo com velocidade constante, um em relação ao outro, não existe experiência mecânica que possa apontar qual está em repouso e qual está em movimento, ou ainda, se ambos se movem.\n        Será que Newton está chateado com Einstein porque ele comeu sua maçã? Certamente que não! E nem Isaac deve estar zangado, pois seu legado é revolucionário, e ele sabia que não estava completo. Deveriam haver outras forças, além das descritas por ele.\n        E de fato, surgiu a compreensão da força eletromagnética verificada por Michael Faraday e James Clerk Maxwell. Eles abriram o caminho para a Física Moderna.",
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
                  Image.asset('assets/images/newton.png',
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
                    "       Faraday era um visionário da física, um pesquisador experimental. Através de seus experimentos com bobinas, agulhas, bússolas, ímãs e gaiolas de ferro, observava a atração e a repulsão entre coisas elétricas e magnéticas. A partir de suas atividades introduziu a ideia de “campo”.\n        Maxwell foi um dos maiores matemáticos do século XIX. Através de suas equações descreveu o comportamento dos campos elétrico e magnético e a explicação para a natureza da luz. Maxwell previu as ondas eletromagnéticas.\n       Então, a partir de Faraday e Maxwell, o mundo newtoniano já não era feito apenas de partículas que se movem no espaço enquanto o tempo passa. (ROVELLI, 2017)\n       Três séculos depois, Albert Einstein propõe uma considerável adequação nos conceitos de espaço e tempo newtoniano, onde declara seus postulados com importantes consequências em todas as áreas da Física.\n       Uma nova teoria com a finalidade de resolver de forma simples e consistente modelos para corpos a qualquer velocidade, desde o repouso até movimentos com velocidades próximas a da luz. (SERWAY, JEWETT JR., 2014)\n       Ele, então, propôs a teoria da relatividade restrita, também denominada teoria da relatividade especial, em 1905, quando tinha apenas 26 anos. A palavra restrita indica que a teoria se aplica somente a referenciais inerciais. (HALLIDAY & RESNICK, 2012)\n",
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
                  Image.asset('assets/images/einstein.png',
                      width: 400, height: 250),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding:
                  EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       A teoria de Einstein provocou uma revolução nos conceitos de espaço e tempo, mas sua origem certamente está relacionada ao desenvolvimento do eletromagnetismo (ROCHA, 2015), que compreende o fenômeno da luz, como uma onda eletromagnética, uma vez que não lhe parecia satisfatória quando aplicada a corpos em movimento. Daí um dos seus artigos publicado em 1905 - “Sobre a Eletrodinâmica dos Corpos em Movimento”. (HAMBURGER, 1984)\n        Einstein (1999, p. 41) em suas considerações explica que a “mecânica clássica tinha que ser modificada a fim de poder ficar em harmonia com a Teoria da Relatividade Especial. Mas, essa modificação só afeta substancialmente as leis no caso de movimentos rápidos, nos quais as velocidades v da matéria não são pequenas demais em comparação com a velocidade da luz.”\n       No próximo capítulo deste guia, você entenderá melhor a teoria relativística, fazendo a leitura dos Postulados de Einstein.",
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
