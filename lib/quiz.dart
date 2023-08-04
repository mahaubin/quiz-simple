import 'dart:ffi';

import 'package:flutter/material.dart';
import "./answer.dart";
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final selectHandler;
  final int questionIndex;

  Quiz(
      {required this.question,
      required this.questionIndex,
      required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question[questionIndex]['questionText'] as String),
      ...(question[questionIndex]["answers"] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => selectHandler(answer["score"]), answer["text"] as String);
      }).toList()
    ]);
  }
}
