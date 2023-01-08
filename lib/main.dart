import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';
import 'dart:convert';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;
  int totalscore = 0;

  void restartQuiz() {
    setState(() {
      questionindex = 0;
      totalscore = 0;
    });
  }

  var questions = [
    {
      'questiontext': 'what is your\'s fav colour ?',
      'answertext': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questiontext': 'what is your\'s fav animal ?',
      'answertext': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Lion', 'score': 8},
        {'text': 'Amit(snake)', 'score': 12},
        {'text': 'Tui', 'score': 10},
      ],
    },
    {
      'questiontext': 'what is your\'s Fav Place ?',
      'answertext': [
        {'text': 'Bihar', 'score': 1},
        {'text': 'Punjab', 'score': 5},
        {'text': 'Gujrat', 'score': 3},
        {'text': 'Mumbai', 'score': 10},
      ],
    },
  ];
  void answerQuestion(int score) {
    totalscore += score;
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: questionindex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionindex: questionindex,
                questions: questions)
            : Result(totalscore,restartQuiz),
      ),
    );
  }
}
