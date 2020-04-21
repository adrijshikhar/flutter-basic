import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // ignore: must_be_immutable
  var _questionIndex = 0; // ignore: must_be_immutable
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _returnToHome() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> _questions = [
      {
        "questionText": "What is your fav color?",
        'answers': [
          {'text': 'black', 'score': 10},
          {'text': 'blue', 'score': 2},
          {'text': 'white', 'score': 5},
          {'text': 'red', 'score': 0},
        ],
      },
      {
        "questionText": "What is your fav animal?",
        'answers': [
          {'text': 'rabbit', 'score': 4},
          {'text': 'lion', 'score': 8},
        ],
      },
      {
        "questionText": "What is your fav food?",
        'answers': [
          {'text': 'chicken', 'score': 8},
          {'text': 'pork', 'score': 6},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My File App"),
          ),
          body: _questionIndex < _questions.length
              ? Column(
                  children: [
                    Quiz(
                      answerHandler: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    ),
                  ],
                )
              : Result(
                  returnToHome: _returnToHome,
                  totalResult: _totalScore,
                )),
    );
  }
}
