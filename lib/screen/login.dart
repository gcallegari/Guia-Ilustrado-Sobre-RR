import 'package:flutter/material.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/screen/register.dart';
import 'package:scoped_model/scoped_model.dart';

class Login extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          if (model.isLoading)
            return Center(child: CircularProgressIndicator());

          return Container(
            child: Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.all(40),
                children: <Widget>[
                  SizedBox(height: 70),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/emc.png',
                          width: 64,
                          height: 64,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF1F81C7),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Guia ilustrado",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFFAA7B),
                          ),
                        ),
                        Text(
                          "Relatividade Restrita",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFFAA7B),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 40,
                      right: 40,
                      top: 30,
                      bottom: 20,
                    ),
                  ),
                  Text(
                    "E-mail",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFAA7B),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    cursorColor: Color(0xFFFFAA7B),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFAA7B)),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (text) {
                      if (text.isEmpty || !text.contains("@"))
                        return "E-mail inválido!";
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Senha",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFAA7B),
                    ),
                  ),
                  TextFormField(
                      controller: _passController,
                      cursorColor: Color(0xFFFFAA7B),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFAA7B)),
                        ),
                      ),
                      validator: (text) {
                        if (text.isEmpty || text.length < 6)
                          return "Senha inválida!";
                      }),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {
                        if (_emailController.text.isEmpty)
                          _scaffoldKey.currentState.showSnackBar(SnackBar(
                            content:
                                Text("Insira o seu e-mail no campo acima."),
                            backgroundColor: Colors.redAccent,
                            duration: Duration(seconds: 2),
                          ));
                        else {
                          model.recoverPass(_emailController.text);
                          _scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text("Confira o inbox do seu e-mail!"),
                            backgroundColor: Colors.black54,
                            duration: Duration(seconds: 2),
                          ));
                        }
                      },
                      child: Text(
                        "Esqueceu a senha?",
                        semanticsLabel: 'Esqueceu a senha?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.blue,
                        ),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    color: Color(0xFF1F81C7),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {}

                      model.signIn(
                          email: _emailController.text,
                          pass: _passController.text,
                          onSuccess: _onSuccess,
                          onFail: _onFail);
                    },
                  ),
                  SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.center,
                    child: FlatButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Register()));
                      },
                      child: Text(
                        "Criar conta",
                        semanticsLabel: 'Botão de Cadastrar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSuccess() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  void _onFail() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Falha ao entrar!"),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2),
    ));
  }
}
