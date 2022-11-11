import 'package:flutter/material.dart';
import 'package:flutter_course/question.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex != questions.length - 1) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Course'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
