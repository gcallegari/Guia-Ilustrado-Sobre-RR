import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/five/cap_five.dart';
import 'package:guia_app/screen/chapters/five/cap_five_atv.dart';
import 'package:guia_app/screen/chapters/six/cap_six.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapFive2 extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 5",
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
                    builder: (context) => CapFive(),
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
                  builder: (context) => AtvdThree(),
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
                    "Vamos entender a 1ª situação nas linguagens ilustrativa e matemática!",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 5, top: 0, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/jana.png',
                      width: 370, height: 280),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20, left: 26, right: 26),
              child: Column(
                children: <Widget>[
                  Text(
                    "        Na teoria relativística, as observações efetuadas pela por Janaína são chamadas de próprias, pois foram feitas em relação ao referencial dela. Podemos perceber que nesta situação o tempo próprio do viajante anda mais devagar do que de alguém que está em repouso.\n       Com um cálculo simples podemos medir o intervalo de tempo ∆𝑡 em que a luz emitida pela lanterna (fonte 𝑓𝐿) vai até o espelho E e volta até a lanterna  𝑓𝐿. Não esquecendo que “c” é a velocidade da luz, temos:\n       - A partir da equação para a distância d:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset('assets/images/form.png',
                      width: 400, height: 100),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 5, top: 0, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/obsAna.png',
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
                    "        Já para Ana, que está parada na plataforma da estação, o caminho descrito pela luz é maior. Neste caso a medição do intervalo de tempo ∆𝑡 é diferente para o lampejo de luz no",
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
                        "trem com velocidade ",
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
                        ". Sendo assim, ",
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
                    "o intervalo de tempo para a luz sair da fonte, refletir-se no espelho e voltar ao ponto de partida também será maior.",
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
              padding: EdgeInsets.only(
                left: 5,
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/obsAna1.png',
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
                    "       Pela teoria da relatividade, a velocidade da luz é constante, por isso, não podemos compô-la com a velocidade do trem. Para Ana verificar a distância percorrida pela luz deverá aplicar o Teorema de Pitágoras:",
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
              padding: EdgeInsets.only(left: 5, top: 0, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/pit.png',
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
                    "        As distâncias descritas no triângulo da figura acima podem ser relacionadas com a velocidade da ",
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
                        " luz c, e a velocidade do trem ",
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
                        " com ",
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
                    "com o intervalo de tempo decorrido. Seguindo a ideia anterior:",
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
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/eq1.png',
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
                    "       Substituindo essas relações na expressão, temos:",
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
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/eq2.png',
                  ),
                  Image.asset(
                    'assets/images/eq3.png',
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
                    "       Lembrando que  ∆𝑡 = 2 . 𝐷/𝑐 é o intervalo de tempo medido por Janaína. Podemos, então, escrever a expressão que fornece a relação entre os dois períodos:",
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
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/eq4.png',
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
                    "       Vamos fazer algumas considerações importantes:\n- “A expressão para a dilatação temporal significa a duração maior de um evento que ocorre num sistema em movimento, quando medida não no tempo próprio desse sistema, mas no tempo próprio de um observador parado”. (MATSUURA, 2003, p. 50)\n- ∆𝑡0 refere-se ao intervalo de tempo próprio - é intervalo de duração de determinado evento medido por um relógio em repouso em relação a um referencial;\n- ∆𝑡′ refere-se a um observador em outro sistema de referência que se move com velocidade constante v em relação ao sistema em repouso. Este será maior do que o intervalo de tempo próprio.\n       Sendo assim:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/eq5.png',
                  ),
                  Image.asset(
                    'assets/images/nenoArrepiou.png',
                  ),
                  Text(
                    "       Com essas definições evidenciamos a equação para a dilatação temporal:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/eq6.png',
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
