import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerQuestion;

  Quiz({this.questions, this.answerQuestion, this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]['questiontext'] as String,
        ),
        ...(questions[questionindex]['answertext'] as List<Map<String, Object>>)
            .map(
          (answertext) {
            return Answer(()=>answerQuestion( answertext['score']), answertext['text']) ;
          },
        )
      ],
    );
  }
}
