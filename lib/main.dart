import 'package:flutter/material.dart';
import 'package:fluttercompleteguide/answer.dart';
import 'package:fluttercompleteguide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var questions = [
    {
      'questionText': 'What is  your favorite color ?',
      'answer': ['black', 'red', 'green', 'white']
    },
    {
      'questionText': 'What is  your favorite animal ?',
      'answer': ['Rabbit', 'Snack', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who is your favorite instructor ?',
      'answer': ['Mitu', 'Siam', 'Imran', 'SK']
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Home Page"),
              backgroundColor: Colors.green,
            ),
            body: _index<questions.length?Column(
              children: [
                Question(
                  questions[_index]['questionText'],
                ),
                ...(questions[_index]['answer'] as List<String>).map((answer) {
                  return AnswerBtn(_answerQuestion, answer);
                }).toList()
              ],
            ):Center(child: Text("You Did it ! "),)));
  }

  void _answerQuestion() {
    // if(_index<questions.length-1){
      setState(() {
        _index = _index + 1;
      });
    // }else{
    //
    // }


    print("Anser Pressed  = $_index");
  }
}
