import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callback;
  final String answer;

  Answer(this.answer, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answer),
        color: Colors.amberAccent,
        textColor: Colors.black,
        onPressed: callback,
      ),
    );
  }
}
