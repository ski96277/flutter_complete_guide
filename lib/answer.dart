import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  String question;

  final Function selectHandler;

  AnswerBtn(this.question, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      child: RaisedButton(
        child: Text(question),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
