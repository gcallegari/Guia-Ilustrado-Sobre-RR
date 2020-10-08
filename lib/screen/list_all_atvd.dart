import 'package:flutter/material.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/screen/list_atvd1.dart';
import 'package:guia_app/screen/list_atvd2.dart';
import 'package:guia_app/screen/list_atvd3.dart';
import 'package:guia_app/screen/list_atvd4.dart';
import 'package:guia_app/widgets/custom_drawer.dart';

class ListAll extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: <Widget>[
          Container(
            child: FlatButton(
              padding: EdgeInsets.only(left: 10),
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
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 30, left: 26, right: 26, bottom: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "               Atividade 1               ",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                color: Color(0xFF1F81C7),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ListAtvd1(),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 10, left: 26, right: 26, bottom: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "               Atividade 2               ",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                color: Color(0xFF1F81C7),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ListAtvd2(),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 10, left: 26, right: 26, bottom: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "               Atividade 3               ",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                color: Color(0xFF1F81C7),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ListAtvd3(),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 10, left: 26, right: 26, bottom: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "               Atividade 4               ",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                color: Color(0xFF1F81C7),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ListAtvd4(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
