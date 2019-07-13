

import 'package:flutter/material.dart';

import 'answers.dart';
import 'question.dart';

class Quiz extends StatelessWidget{
  final Map<String,Object> question;
  final Function answerQuestion;

  const Quiz({Key key, this.question, this.answerQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
          children: <Widget>[
            Question(question["questionText"]),
            ...(question["answers"] as List<Map<String,Object>>).map((answer) {
              return Answer(()=>answerQuestion(answer["score"]), answer["text"]);
            }).toList(),
          ],
        );
  }



}