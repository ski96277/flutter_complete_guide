import 'package:flutter/material.dart';
import 'package:fluttercompleteguide/answer.dart';
import 'package:fluttercompleteguide/question.dart';
import 'package:fluttercompleteguide/quize.dart';
import 'package:fluttercompleteguide/result.dart';

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
            body: _index<questions.length?
                Quize(_answerQuestion,questions,_index)
                :Result()));
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
