import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Answer(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          child: Text(text),
          onPressed: onPressed),
    );
  }
}
