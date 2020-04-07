import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  __MyHomePageState createState() => __MyHomePageState();
}

class __MyHomePageState extends State<_MyHomePage> {
  var _questionIndex = 0;
  var _totalScore = 0;

  bool done = false;

  final _questions = const [
    {
      'Q': 'What\'s your favourite color?',
      'A': [
        {'text': 'Black', 'score': 4},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'Q': 'What\'s your favourite animal?',
      'A': [
        {'text': 'Deer', 'score': 4},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'Q': 'Who\'s your favourite instructor?',
      'A': [
        {'text': 'Max', 'score': 4},
        {'text': 'Dany', 'score': 3},
        {'text': 'Jin', 'score': 2},
        {'text': 'Tim', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Flutter Demo'),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              answerQuestion: _answerQuestion,
              index: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore),
    );
  }
}
