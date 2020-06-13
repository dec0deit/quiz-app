import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'question': 'monica \'s job?',
      'answer': [
        {
          'text': 'chef',
          'score': 100,
        },
        {
          'text': 'designer',
          'score': 0,
        },
        {
          'text': 'waitress',
          'score': 0,
        },
        {
          'text': 'paleontologist',
          'score': 0,
        },
      ],
    },
    {
      'question': 'who does not share food?',
      'answer': [
        {
          'text': 'joey',
          'score': 100,
        },
        {
          'text': 'chandler',
          'score': 0,
        },
        {
          'text': 'monica',
          'score': 0,
        },
        {
          'text': 'rachel',
          'score': 0,
        },
      ],
    },
    {
      'question': 'for how long ross and rachel were on a break ?',
      'answer': [
        {
          'text': '10 years',
          'score': 100,
        },
        {
          'text': '5 years',
          'score': 0,
        },
        {
          'text': '4 years',
          'score': 0,
        },
        {
          'text': '6 years',
          'score': 0,
        },
      ],
    },
  ];
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    }
  }
  void _resetquiz(){
    setState(() {
      _totalScore=0;
      _questionIndex=0;
    });
  }

  @override
  Widget build(BuildContext con) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions,
              )
            : Result(_totalScore,_resetquiz),
      ),
    );
  }
}
