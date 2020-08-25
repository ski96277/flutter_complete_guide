//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//
//        primarySwatch: Colors.blue,
//
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: AppBar(
//
//        title: Text(widget.title),
//      ),
//      body: Center(
//
//        child: Column(
//
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.headline4,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'package:fluttercompleteguide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var questions = ["what\'s your name ? ","what\'s your .. ? ",];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Home Page"),
              backgroundColor: Colors.green,
            ),
            body: Column(
              children: [
                Question(questions[_index]),
                RaisedButton(
                    child: Text("Question 1"), onPressed: answerQuestion),
                RaisedButton(
                    child: Text("Question 2"), onPressed: answerQuestion),
                RaisedButton(child: Text("Question 3"),
                    onPressed: () => print("Button on pressed online")),
                RaisedButton(child: Text("Question 4"), onPressed: () {
                  print("anser body print");
                }),
              ],
            )));
  }

  void answerQuestion() {
    setState(() {

      _index=_index+1;

    });

    print("Anser Pressed  = $_index");
  }
}
