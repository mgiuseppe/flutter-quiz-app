import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['red', 'blue', 'green', 'black']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['dog', 'cat', 'parrot']
    }
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home is the widget for the default route of the app ([Navigator.defaultRouteName], which is / ).
        home: Scaffold(
            appBar: AppBar(title: const Text('My first App')),
            body: _questionIndex < _questions.length
                ? Quiz(questions: _questions, answerQuestion: _onPressed, questionIndex: _questionIndex)
                : Result()));
  }

  void _onPressed() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
}
