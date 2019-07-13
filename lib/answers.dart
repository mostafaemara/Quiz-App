import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 final String  answerText;
  final Function _handleAnswer;

  const Answer(this._handleAnswer, this.answerText);

 

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(answerText),
        onPressed: _handleAnswer,
      ),
    );
  }



}