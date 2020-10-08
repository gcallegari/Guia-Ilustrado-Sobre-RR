import 'package:flutter/material.dart';
import 'package:guia_app/screen/chapters/six/cap_six.dart';
import 'package:guia_app/screen/chapters/two/cap_two2.dart';
import 'package:guia_app/widgets/custom_drawer.dart';
import 'package:guia_app/widgets/done.dart';

class CapSeven extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Capítulo 7",
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
                    builder: (context) => CapSix(),
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
                  builder: (context) => Done(),
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
                    "Energia Relativística",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: Color(0xFFFFAA7B),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(left: 26, top: 20, bottom: 20, right: 26),
              child: Column(
                children: <Widget>[
                  Text(
                    "        Não somente a dilatação do tempo e a relatividade do comprimento são afetados pelo movimento relativo entre o observador e o evento. A teoria da relatividade também manifesta outra consequência dos postulados que é a relação entre massa e energia. Em 1905, Einstein divulgou que massa e energia são equivalentes, ratificando que a energia E liberada pela destruição de uma massa m é igual a velocidade da luz c ao quadrado. Sendo assim, a luz que viaja a velocidade aproximada de 3𝑥10^8 𝑚/𝑠, no vácuo, libera uma enorme quantidade de energia mesmo quando da destruição de uns poucos átomos. O Sol e as usinas nucleares produzem energia desse modo. (BAKER, 2015)\n       Daí a equação mais famosa da Física, se não for a mais célebre da Ciência: E = mc².\n       A equação implica que uma quantidade pequena de massa m contém uma grande quantidade de energia E. Onde, a massa é multiplicada pela velocidade da luz ao quadrado c², que em números é 9𝑥10^16, ou seja 90 quatrilhões, considerando o espaço medido em metros. Sendo a massa medida em kg e a velocidade da luz em m/s, a unidade de medida da energia será em joules J. (VIEIRA, 2003)",
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
              padding: EdgeInsets.only(top: 0, left: 26, right: 26),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/emc2.png',
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 26, top: 10, bottom: 0, right: 26),
              child: Column(
                children: <Widget>[
                  Text(
                    "        Sabendo que a massa é a medida da inércia de uma partícula ou corpo, Einstein com sua teoria, mostrou que se a massa de uma partícula em repouso é 𝑚0, a massa m dessa partícula em movimento com velocidade v é dada por: ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/eq11.png',
                  ),
                  Text(
                    "        Com as adequações relativísticas temos que:\n       - se v << c, a massa em movimento é praticamente igual à sua massa em repouso (𝑚0);\n       - quanto maior for a velocidade v da partícula, maior será o valor de sua massa m. (GUIMARÃES, 2013, p. 210)\n       E com relação à energia, estabeleceu que uma partícula em repouso possui uma energia de repouso 𝐸0: ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/eq12.png',
                  ),
                  Text(
                    "         Da mesma forma, uma partícula de massa m em movimento possui uma energia total E:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/eq13.png',
                  ),
                  Text(
                    "          Essa expressão constitui a chave para a compreensão da energia nuclear, que explica a origem nuclear das estrelas. (Idem)\n       E para o cálculo da diferença entre a energia total e a de repouso, temos a energia cinética do corpo:",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Image.asset(
                    'assets/images/eq14.png',
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 0, left: 26, right: 26, bottom: 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "\n       -> A formulação da famosa equação da energia E = mc², trouxe a Einstein algumas tristezas, como a denominação equivocada, à sua pessoa, de ser o “pai” da bomba atômica. Segundo Vieira (2003), ele será sempre referenciado à teoria relativística, porém, após o lançamento das bombas de urânio e de plutônio, em agosto de 1945, durante a Segunda Guerra Mundial, que destruiu as cidades japonesas de Hiroshima e Nagasaki, matando mais de 200 mil pessoas, seu nome foi injustamente associado aquele genocídio. Um raciocínio “torto” agregado de que o princípio do funcionamento da bomba atômica é a equação E = mc². O que de fato devemos ter em mente é que a relação de Einstein para massa e energia desempenha um papel extremamente importante na Física Nuclear, uma vez que essa relação indica a transformação de uma grandeza na outra. (MENEZES, 2013)",
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
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 20),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/sadEinstein.png',
                  ),
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
                    "Uma reflexão a fazer...",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Text(
                    "\n       É importante considerar o que diz a teoria relativística, referente a massa de um corpo aumentar com sua velocidade. Esclarecendo que, esse fenômeno só seria verificado por um observador em outro referencial inercial. Portanto, numa viagem a velocidade próxima à da luz c, a massa da pessoa, da nave e de tudo que estivesse dentro dela, aumentariam extraordinariamente. Mas, seria imperceptível para quem estivesse dentro da nave.\n       Sabendo que para que um corpo saia do seu estado de inércia e entre em movimento, é necessário a aplicação de uma força, que originará energia cinética proporcional à massa e à velocidade do corpo.\n       Porém, de acordo com a equação E = m c², massa e energia são conceitos permutáveis. Assim, ao fornecermos energia para aumentar a velocidade de um corpo, também estaremos aumentando sua massa. Como consequência do aumento de massa, deveremos aumentar a força para que o corpo continue aumentando sua velocidade. Porém, esse processo tem um limite, uma vez que nenhum corpo com massa pode atingir ou ultrapassar a velocidade da luz c. (VIEIRA, 2003)",
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
