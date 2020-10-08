import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/screen/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  FirebaseUser firebaseUser;

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() async {
    if (firebaseUser == null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    }
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/emc.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0,)),
            Column(
              children: <Widget>[
                Text(
                  "Guia Ilustrado sobre",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    color: Color(0xFF1F81C7),
                  ),
                ),
                Text(
                  "Relatividade Restrita",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Color(0xFF1F81C7),
                  ),
                ),
              ],
            ),
            SizedBox(height: 64),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Color(0xFF1F81C7),
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
