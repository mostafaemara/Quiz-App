

import 'package:flutter/material.dart';

class Result extends StatelessWidget{

    final int resultScore;
    final Function restQuiz;

  const Result({Key key, this.resultScore, this.restQuiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      child:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Congratz Your Score is : $resultScore",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          FlatButton(
            onPressed: restQuiz,
child: Text("Rest Quiz? Rest",
style: TextStyle(
  color: Colors.blue,
  fontSize: 15
),
),
          ),
        ],
      ),
    ));
  }



}