import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  String title;
  Color color;
  
DefaultButton({@required this.title, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 260,
      child: FlatButton(
        child: Container( 
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            this.title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        onPressed: () {
        },
      ),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
    );
  }
}
