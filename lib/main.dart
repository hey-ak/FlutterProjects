import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

}
class MyAppState extends State{
  var questionindex = 0;
  void answerQuestion() {
    questionindex = questionindex + 1;
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your\'s name ?',
      'what is your\'s fav game ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Text(
              questions[questionindex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer3"),
            ),
          ],
        ),
      ),
    );
  }
}
