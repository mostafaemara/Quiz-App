import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result.dart';

import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  int _totalScore=0;
    void _answerQuestion(int score) {

      _totalScore+=score;
    setState(() {
      
        index++;
     
    });
  }

  var questions = [
    {
      "questionText": "Whats your favorite Color ?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 3},
        {"text": "Green", "score": 5},
        {"text": "White", "score": 8},
        {"text": "Gray", "score": 6},
        {"text": "Yellow", "score": 4},
        {"text": "BLue", "score": 10}
      ]
    },
    {
      "questionText": "Whats your favorite drink ?",
      "answers": [
        {"text": "Coffe", "score": 7},
        {"text": "Lemon Juice", "score": 5},
        {"text": "Tea", "score": 3},
        {"text": "Mango Juice", "score": 10},
      ]
    },
    {
      "questionText": "Who is your favorite Super Hero ?",
      "answers": [
        {"text": "Batman", "score": 10},
        {"text": "Superman", "score": 8},
        {"text": "The Flash", "score": 5},
        {"text": "Doctor Fate", "score": 2},
        {"text": "Green Arrow", "score": 4},
        {"text": "Black Canary", "score": 1},
        {"text": "Wounder Woman", "score": 7}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: index<questions.length?
        Quiz(question: questions[index],
        answerQuestion: _answerQuestion,)
        :Result(resultScore: _totalScore,restQuiz: _restQuiz,)
      ),
    );
  }

  void _restQuiz(){

  setState(() {
      index=0;
    _totalScore=0;
    });
    
  }
}
