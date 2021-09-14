import 'package:flutter/material.dart';

import './question.dart';

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
                ElevatedButton(child: const Text('Answer 1'), onPressed: _onPressed),
                ElevatedButton(child: const Text('Answer 2'), onPressed: _onPressed),
                ElevatedButton(child: const Text('Answer 3'), onPressed: _onPressed),
              ],
            )));
  }

  void _onPressed() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
}
