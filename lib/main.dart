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
  var questions = [
    {
      'questiontext': 'what is your\'s fav colour ?',
      'answertext': ['Blue', 'Red', 'Black', 'Green'],
    },
    {
      'questiontext': 'what is your\'s fav animal ?',
      'answertext': ['Tui', 'Rabbit', 'Lion', 'Snake(Amit)'],
    },
    {
      'questiontext': 'what is your\'s Fav Place ?',
      'answertext': ['Bihar', 'Punjab', 'Gujrat', 'Banglore'],
    },
  ];
  void answerQuestion() {
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
        body: questionindex<questions.length? Quiz(answerQuestion: answerQuestion,questionindex: questionindex,questions:questions)
     
        :Result(),
      ),
    );
  }
}
