import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;

  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(questions[index]['Q']),
        ...(questions[index]['A'] as List<Map<String, Object>>)
            .map((e) => Answer(
                  e['text'],
                  () => answerQuestion(e['score']),
                ))
            .toList(),
      ],
    );
  }
}
