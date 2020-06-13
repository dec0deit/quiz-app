import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  final Function resetHandler;
  Result(this.score, this.resetHandler);
  String get getResult {
    String s = 'your score is $score';
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResult,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
