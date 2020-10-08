import 'package:flutter/material.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/chapters/five/cap_five.dart';
import 'package:guia_app/screen/chapters/four/cap_four.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class AtvdTwo extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<AtvdTwo> {
  final _resp1Controller = TextEditingController();

  final _resp2Controller = TextEditingController();
  final _resp3Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Atividades",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
            color: Color(0xFF1F81C7),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                  MaterialPageRoute(
                    builder: (context) => CapFour(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          if (model.isLoading)
            return Center(child: CircularProgressIndicator());

          return Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(36.0),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Atividade 2",
                    semanticsLabel: 'Atividade 2',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1F81C7),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 36),
                Text(
                  "1. (Adaptação TORRES, 2016, p. 189) Uma árvore e um poste estão distantes 3 km entre si. Cada um deles é atingido por um raio, e os eventos “um raio atinge uma árvore” (𝑅𝑎) e “um raio atinge um poste” (𝑅𝑝) são vistos por dois observadores. Alexandre, parado em um ponto do solo equidistante da árvore e do poste, vê os dois eventos no exato instante em que Murilo passa à sua frente. Murilo está em movimento uniforme ao longo da reta definida pela árvore e pelo poste e no sentido da árvore para o poste. Pergunta-se:\n\na) Os eventos (𝑅𝑎) e (𝑅𝑝) foram gerados simultaneamente? Justifique: ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor),
                ),
                TextFormField(
                  controller: _resp1Controller,
                  decoration: InputDecoration(
                    hintText: "Insira sua resposta",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  validator: (text) {
                    if (text.isEmpty) return "Preencher campo!";
                  },
                ),
                SizedBox(height: 16.0),
                Text(
                  "b) Murilo vê o evento (𝑅𝑎) ocorrer antes de (𝑅𝑝), depois de (𝑅𝑝) ou vê os dois simultaneamente? Justifique:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor),
                ),
                TextFormField(
                  controller: _resp2Controller,
                  decoration: InputDecoration(
                    hintText: "Insira sua resposta",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if (text.isEmpty) return "Preencher campo!";
                  },
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "2. (Adaptação GASPAR, 2016, p. 221) Uma das consequências dos postulados de Einstein, trata sobre a relatividade da simultaneidade. Mas agora, no momento em que você está lendo esta questão, outras pessoas certamente estão fazendo outras coisas. Você e elas estão fazendo uma porção de coisas simultaneamente? Explique:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor),
                ),
                TextFormField(
                  controller: _resp3Controller,
                  decoration: InputDecoration(
                    hintText: "Insira sua resposta",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (text) {
                    if (text.isEmpty) return "Preencher campo!";
                  },
                ),
                SizedBox(height: 60),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  color: Color(0xFF1F81C7),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Map<String, dynamic> userData = {
                        "1": _resp1Controller.text,
                        "2": _resp2Controller.text,
                        "3": _resp3Controller.text,
                      };

                      model.atvTwo(_resp1Controller.text, _resp2Controller.text,
                          _resp3Controller.text);

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => CapFive(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
