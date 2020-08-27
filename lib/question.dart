import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  String QuestionText;

  Question(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Text(
          QuestionText,
          style: TextStyle(color: Colors.black,fontSize: 29),
          textAlign: TextAlign.center,
        ));
  }
}
