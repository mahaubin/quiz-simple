import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultText {
    String resultat = "";

    if (resultScore < 9) {
      resultat = "You are the best";
    } else {
      resultat = "You are the best";
    }

    return resultat;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(onPressed: resetHandler, child: Text("Reset Quiz"))
      ],
    );
  }
}
