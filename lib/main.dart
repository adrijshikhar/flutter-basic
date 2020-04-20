import 'package:flutter/material.dart';

void main() => runApp(MyApp());

void answerQuestion() {
  print('Answer chosen');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What is your fav color?",
      "What is your fav animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My File App"),
        ),
        body: Column(
          children: [
            Text("The question"),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
