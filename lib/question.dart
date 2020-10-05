import 'package:flutter/material.dart';

//Create your own widget
class Question extends StatelessWidget {
  final String questionText;
  //  Question({this.questionText}); // named arguement
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //styling the widget
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        // child is the content of the widget
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
