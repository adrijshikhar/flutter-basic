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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _returnToHome() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> _questions = [
      {
        "questionText": "What is your fav color?",
        'answers': ['black', 'red', 'green', 'white'],
      },
      {
        "questionText": "What is your fav animal?",
        'answers': ['rabbit', 'lion'],
      },
      {
        "questionText": "What is your fav food?",
        'answers': ['chicken', 'pork'],
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
                )),
    );
  }
}
