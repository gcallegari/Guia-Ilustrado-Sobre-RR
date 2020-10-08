import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  Color color;

  HeadText(@required this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 80, left: 50),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Guia",
                    style: TextStyle(
                      fontSize: 35,
                      color: color,
                    ),
                  ),
                  Text(
                    "Ilustrado",
                    style: TextStyle(
                      fontSize: 35,
                      color: color,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "sobre ",
                        style: TextStyle(
                          fontSize: 35,
                          color: color,
                        ),
                      ),
                      Text(
                        "RR",
                        style: TextStyle(
                            fontSize: 40,
                            color: color,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Relatividade Restrita",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
