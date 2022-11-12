import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final VoidCallback onPressed;
  final String answerText;

  const Answer(this.onPressed, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, foregroundColor: Colors.black),
          child: Text(answerText),
        ));
  }
}
