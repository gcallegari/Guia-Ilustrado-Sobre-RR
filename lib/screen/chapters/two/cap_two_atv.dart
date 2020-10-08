import 'package:flutter/material.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/chapters/two/cap_two2.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

import '../three/cap_three.dart';

class AtvOne extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<AtvOne> {
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
                    builder: (context) => CapTwo2(),
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
                    "Atividade 1",
                    semanticsLabel: 'Atividade 1',
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
                  "1. Qual grandeza tem o mesmo valor quando medida por dois observadores, qualquer que seja a velocidade relativa uniforme entre eles?",
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
                  "2. A Mecânica Newtoniana poderia ser comprovada no interior de um vagão de um trem que se encontra em movimento retilíneo uniforme (MRU)? Justifique:",
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
                  "3. Imagine que você está num trem com velocidade constante, em MRU, com as janelas fechadas. Seu celular toca e um amigo pergunta pra você: o trem está parado ou em movimento?",
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

                      model.atvOne(_resp1Controller.text, _resp2Controller.text,
                          _resp3Controller.text);

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => CapThree(),
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
