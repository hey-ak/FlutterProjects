import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function restartHandler;
  Result(this.resultScore,this.restartHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You and awesome and inocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likable !";
    } else if (resultScore <= 16) {
      resultText = "You are Strange !";
    } else {
      resultText = "You are so Bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
           TextButton(
            onPressed: restartHandler,
            child: const Text("Restart"),
          ) 
        ],
      ),
    );
  }
}
