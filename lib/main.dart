import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  void answerQQuestion() {
    setState(() {
      if(index<=1){
      index++;
      }else{

        index=0;
      }
    });
  }

  var questions = [
    "whats your fav Color ?",
    "Whats your favorite Drink?",
    "whats your favorite Actor?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Question(questions[index]),
            RaisedButton(
              onPressed: answerQQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
               onPressed: answerQQuestion,
              child: Text("Answer 2"),
            ),
            RaisedButton(
               onPressed: answerQQuestion,
              child: Text("Answer 3"),
            ),
            RaisedButton(
              onPressed: answerQQuestion,
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
