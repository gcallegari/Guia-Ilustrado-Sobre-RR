import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/five/cap_five2.dart';
import 'package:guia_app/screen/chapters/four/cap_four.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class CapFive extends StatelessWidget {
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
                    builder: (context) => CapFour(),
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
                  builder: (context) => CapFive2(),
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
                    "Dilatação temporal",
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
              padding: EdgeInsets.only(left: 5, top: 0, bottom: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/dilatacao.png',
                      width: 370, height: 280),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "        Com certeza não podemos perceber o tique-taque mais vagaroso do relógio, pois vivenciamos velocidades muito inferiores à velocidade c da luz. Mas, podemos compartilhar a ideia de Einstein de que o tempo é relativo a cada observador. Quanto mais rápido for o movimento, mais lento andará o relógio quando comparado ao de outro observador. Esse fenômeno, que é mais uma consequência dos postulados, é chamado dilatação temporal.\n        “Se a simultaneidade não é absoluta, o intervalo de tempo entre dois eventos também não é o mesmo para todos os referenciais inerciais. Assim, a marcha do tempo é relativa ao movimento do observador e não é possível manter o sincronismo entre relógios de dois sistemas inerciais em movimento relativo”. (MATSUURA, 2003, p. 48)\n\n       Vamos viajar no trem de Einstein!\n\n       - 1ª situação: Durante uma viagem de trem, com uma lanterna no chão do vagão, uma passageira emite um breve lampejo de luz verticalmente para o teto onde está um espelho. O espelho reflete o lampejo de volta para a lanterna.\n       Esse experimento é observado ao mesmo tempo pela passageira, que vamos chamar de Janaína, que está no trem e pela sua amiga Ana, que está fora dele, parada na plataforma de uma estação.\n       Para Janaína, o tempo transcorrido para a luz retornar é igual a duas vezes a altura do teto dividida pela velocidade da luz c.\n       Mas, para Ana, o raio de luz descreveu um triângulo isósceles para atingir o espelho e retornar para a lanterna. A trajetória, neste caso, é mais longa. Sendo a velocidade da luz constante, a luz percorrerá o trajeto num tempo maior, tanto maior quanto maior for a velocidade do trem. Portanto, a duração de um mesmo evento não é absoluta. A duração de um evento que ocorre num sistema em movimento, medida nesse sistema, sofre dilatação quando é medida por um observador parado. ",
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
                    "        - 2ª situação: Imaginemos agora que o trem acima viaja a uma",
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
                        "velocidade ",
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
                        " de 240 𝑥 10^3km/s.",
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
                    "Janaína, embarcou em sua cidade quando o relógio da estação marcava 9h. Por esse relógio ela acertou seu relógio de pulso. Seu destino é para outra cidade distante 864 𝑥 10^6 km.",
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
                    "       - Então, com essas informações, qual a duração prevista dessa viagem?\n       Suponhamos que as duas cidades sigam o mesmo fuso horário. Desse modo, Janaína deverá chegar ao seu destino (senão houver nenhum imprevisto), quando o relógio da estação estiver marcando 10h. Porém, para sua surpresa, a moça perceberá, ao chegar no seu destino, que seu relógio de pulso está atrasado em relação ao relógio da estação, ou seja, ainda não estará marcando 10h.\n       - Se a velocidade do trem fosse a da luz c, que horas o relógio de pulso estaria marcando?",
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
                  Image.asset('assets/images/quest.png',
                      width: 400, height: 150),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "       Concluímos, portanto, que nas duas situações ocorre a dilatação do tempo.",
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
