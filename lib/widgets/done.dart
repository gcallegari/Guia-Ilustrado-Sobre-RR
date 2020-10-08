import 'package:flutter/material.dart';
import 'package:guia_app/screen/home.dart';

class Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFAA7B),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/ovniNeno.png',
                      width: 200, height: 300),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 0),
              alignment: Alignment.center,
              child: Text(
                "Você conseguiu!",
                style: TextStyle(color: Color(0xFF444444), fontSize: 36),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 26, top: 10, right: 26),
              alignment: Alignment.center,
              child: Text(
                "Chegamos ao fim da nossa jornada.",
                style: TextStyle(color: Color(0xFF444444), fontSize: 20),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/spaceNeno.png',
                      width: 250, height: 250),
                ],
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  fontFamily: 'Poppins',
                ),
              ),
              textColor: Colors.white,
              padding: EdgeInsets.all(10),
              color: Color(0xFF1F81C7),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
