import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String QuestionText;

  Question(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          QuestionText,
          style: TextStyle(color: Colors.black, fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
