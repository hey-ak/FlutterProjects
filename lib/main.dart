import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Text("Question1"),
            ElevatedButton(onPressed:null , child: Text("Answer1"),),
            ElevatedButton(onPressed:null , child: Text("Answer2"),),
            ElevatedButton(onPressed:null , child: Text("Answer3"),),

          ],
          
        ),
      ),
    );
  }
}
