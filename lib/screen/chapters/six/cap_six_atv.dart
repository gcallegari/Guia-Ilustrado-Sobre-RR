import 'package:flutter/material.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/chapters/seven/cap_seven.dart';
import 'package:guia_app/screen/chapters/six/cap_six.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class AtvdFour extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<AtvdFour> {
  final _resp1Controller = TextEditingController();
  final _resp2Controller = TextEditingController();

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
                    builder: (context) => CapSix(),
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
                    "Atividade 4",
                    semanticsLabel: 'Atividade 4',
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
                  "1. Supondo que uma nave espacial possui 10m de comprimento quando ela está em repouso na Terra. Com a nave em movimento com velocidade v igual a 80% da velocidade da luz c, um observador fixo na Terra, dispondo de aparelhagem adequada, efetua a medida do comprimento da nave. (GUIMARÃES, 2016, p. 198)\n\na) Qual é o resultado obtido pelo observador fixo na Terra?",
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
                SizedBox(height: 10),
                SizedBox(height: 36),
                Text(
                  "b) Qual é o comprimento da nave medido por um tripulante da nave?",
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
                      };

                      model.atvtFour(
                          _resp1Controller.text, _resp2Controller.text);

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => CapSeven(),
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
