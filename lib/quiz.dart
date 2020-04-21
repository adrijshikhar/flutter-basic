import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerHandler;
  final int questionIndex;
  Quiz({
    @required this.questions,
    @required this.answerHandler,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(
            questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) => Answer(
                    () => answerHandler(answer['score']),
                    answer['text'],
                  ))
              .toList()
        ],
      ),
    );
  }
}
