import 'package:flutter/material.dart';
import 'package:flutter_course/question.dart';
import 'package:flutter_course/answer.dart';

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
  static const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    }
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
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            })
          ],
        ),
      ),
    );
  }
}
