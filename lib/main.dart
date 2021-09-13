import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home is the widget for the default route of the app ([Navigator.defaultRouteName], which is / ).
        home: Scaffold(
            appBar: AppBar(title: const Text('My first App')),
            body: Column(
              children: [
                const Text('The question!'),
                ElevatedButton(
                    child: const Text('Answer 1'), onPressed: onPressed),
                ElevatedButton(
                    child: const Text('Answer 2'),
                    onPressed: () {
                      print('Answer 2 chosen!');
                    }),
                ElevatedButton(
                    child: const Text('Answer 3'),
                    onPressed: () => print('Answer 3 chsoen!')),
              ],
            )));
  }

  onPressed() => print('Answer chosen!');
}

