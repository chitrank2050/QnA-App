import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callback;

  Answer(this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Answer 1'),
        color: Colors.amberAccent,
        textColor: Colors.black,
        onPressed: callback,
      ),
    );
  }
}
