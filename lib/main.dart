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
      'answers': [
        {'text': 'red', 'score': 3},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 10},
        {'text': 'black', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog', 'score': 3},
        {'text': 'cat', 'score': 5},
        {'text': 'parrot', 'score': 2},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home is the widget for the default route of the app ([Navigator.defaultRouteName], which is / ).
        home: Scaffold(
            appBar: AppBar(title: const Text('My first App')),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    onPressed: _onPressed,
                    questionIndex: _questionIndex)
                : Result(_totalScore)));
  }

  void _onPressed(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }
}
