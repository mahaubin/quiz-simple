import 'package:flutter/material.dart';
import 'package:section1/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _question = [
      {
        "questionText": "what's your favorite color?",
        "answers": [
          {"text": "Blue", "score": 2},
          {"text": "Green", "score": 5},
          {"text": "Red", "score": 8},
        ]
      },
      {
        "questionText": "what's your favorite animal?",
        "answers": [
          {"text": "Snack", "score": 2},
          {"text": "Tiger", "score": 9},
          {"text": "Lion", "score": 10},
        ]
      },
      {
        "questionText": "what's your favorite singer?",
        "answers": [
          {"text": "Passenger", "score": 2},
          {"text": "Adel", "score": 5},
          {"text": "TGC", "score": 6},
        ]
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                question: _question,
                questionIndex: _questionIndex,
                selectHandler: answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
