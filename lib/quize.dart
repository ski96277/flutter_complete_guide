import 'package:flutter/cupertino.dart';
import 'package:fluttercompleteguide/question.dart';
import './answer.dart';

class Quize extends StatelessWidget {

  final List<Map<String,Object>> questions;
  Function _answerQuestion;
  int _index;

  Quize(this._answerQuestion, this.questions,this._index);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
      Question(
        questions[_index]['questionText'],
      ),
      ...(questions[_index]['answer'] as List<String>).map((answer) {
        return AnswerBtn(_answerQuestion, answer);
      }).toList()
    ],
    );

  }
}

