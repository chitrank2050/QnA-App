import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  var questions = [
    {
      'Q': 'What\'s your favourite color?',
      'a': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'Q': 'What\'s your favourite animal?',
      'a': ['Deer', 'Rabbit', 'Elephant', 'Lion'],
    },
    {
      'Q': 'Who\'s your favourite instructor?',
      'a': ['Max', 'Dany', 'Jin', 'Spencer'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Flutter Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(questions[_questionIndex]['Q']),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    );
  }
}
