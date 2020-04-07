import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  String get resultPhrase {
    return 'Finished with questions!! \n SCORE: $score';
  }

  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
