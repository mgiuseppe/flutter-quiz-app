import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home is the widget for the default route of the app ([Navigator.defaultRouteName], which is / ).
        home: Scaffold(
            appBar: AppBar(title: const Text('My first App')),
            body: Column(
              children: [
                Question(questions[_questionIndex]),
                Answer('Answer 1', _onPressed),
                Answer('Answer 2', _onPressed),
                Answer('Answer 3', _onPressed),
              ],
            )));
  }

  void _onPressed() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
}
