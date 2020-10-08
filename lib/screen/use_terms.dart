import 'package:flutter/material.dart';
import 'package:guia_app/screen/register.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class UseTerms extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Container(
            child: FlatButton(
              child: Icon(
                Icons.arrow_back_ios,
                size: 22,
                color: Color(0xFF1F81C7),
                semanticLabel: 'voltar',
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Register()));
              },
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "TERMOS DE USO",
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
                  EdgeInsets.only(top: 20, left: 26, right: 26, bottom: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    "1. ACORDO DE TERMOS\n\n"
                    "OS PRESENTES TERMOS TRATAM DO USO DA APLICAÇÃO GUIA ILUSTRADO SOBRE RELATIVIDADE RESTRITA."
                    "PARA O USO DA APLICAÇÃO, O USUÁRIO DEVE CONCORDAR COM ESTAS CONDIÇÕES."
                    "Ao usar ou acessar a aplicação o usuário aceita os termos que seguem e garante ter capacidade jurídica, sendo responsável pelo uso da aplicação por menor ao qual é responsável.\n"
                    "A PRESENTE APLICAÇÃO É DE PROPRIEDADE DE GUILHERME DA ROSA CALLEGARI, ORA RESPONSÁVEL, SOB INSCRIÇÃO DE CPF 013.752.410-28.\n\n"
                    "2. MODIFICAÇÕES DOS TERMOS\n\n"
                    "OS PRESENTES TERMOS PODEM SER ATUALIZADOS PERIODICAMENTE. Você receberá notificação caso ocorra a atualização dos termos e estes passaram a valer em 15 dias após a notificação.\n\n"
                    "3. SUAS INFORMAÇÕES E CONTA\n\n"
                    "SEUS DADOS são utilizados somente para realizar autenticação na aplicação, não sendo disponibilizados a terceiros e nem utilizados para outra atividade, além desta e, de comunicação por parte da responsável.\n\n"
                    "4. PRIVACIDADE\n\n"
                    "O Usuário concorda e autoriza o uso dos seus dados para os motivos elencados no item anterior do presente termo.\n"
                    "Os dados serão processados pela aplicação e pela ferramenta de banco de dados, denominada FIREBASE, de propriedade da GOOGLE, a qual é responsável pelo seu armazenamento.\n\n"
                    "REGRAS DE CONDUTA - ITEM NÃO SE APLICA - VALIDADE DE POSSIBILIDADE\n\n"
                    "5. VIOLAÇÃO DO TERMO\n\n"
                    "Se o usuário violar qualquer item do termo ou se a responsável acreditar que sua conduta é lesiva, violar direitos ou ameaçar prejudicar terceiros, podendo criar responsabilidade para a responsável ou terceiros, reserva a responsável o direito de investigar e tomar as medidas legais cabíveis, incluindo a exclusão da conta do usuário.\n\n"
                    "6. POSSE DOS DIREITOS DE CONTEÚDO, PROPRIEDADE INTELECTUAL E DIREITOS AUTORAIS\n\n"
                    "O RESPONSÁVEL POSSUI AUTORIZAÇÃO DE MILENA TEIXEIRA DA ROSA PARA A REPRODUÇÃO DO CONTEÚDO DO LIVRO GUIA ILUSTRADO SOBRE RELATIVIDADE RESTRITA NA PRESENTE APLICAÇÃO."
                    " O usuário não pode sob qualquer hipótese copiar, distribuir, vender, alugar, executar, sublicenciar, modificar ou preparar trabalhos derivados da aplicação, no todo ou em parte, exceto quando expressamente autorizado. Qualquer uso da aplicação não expressamente permitido por estes Termos será considerado violação destes Termos e violação dos direitos autorais, marcas e outras leis.\n\n"
                    "7. DISPOSIÇÕES GERAIS\n\n"
                    "Estes Termos e a resolução de qualquer controvérsia ou reivindicação decorrente ou relacionadas com estes Termos ou da aplicação serão regidos e interpretados de acordo com as leis do País, sem dar efeito a quaisquer princípios de conflitos de lei.\n\n"
                    "Capão da Canoa, Rio Grande do Sul, Brasil.\nEndereço de e-mail: guilhermercallegari@gmail.com",
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
