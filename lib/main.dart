import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home is the widget for the default route of the app ([Navigator.defaultRouteName], which is / ).
      home: Scaffold(
          appBar: AppBar(title: const Text('My first App')),
          body: const Text('This is my default body')),
    );
  }
}