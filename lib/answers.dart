import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answertext;

  Answer(this.selectHandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answertext),
          style: ButtonStyle(
            // overlayColor: MaterialStateProperty.all(Color.fromARGB(255, 221, 166, 4)),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 221, 166, 4)),
            foregroundColor:
                MaterialStateProperty.all(Color.fromARGB(232, 14, 0, 0)),
          ),
        ));
  }
}
