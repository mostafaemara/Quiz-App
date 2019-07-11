import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget{
  const Question(this.question);

   final String question;

  @override
  Widget build(BuildContext context) {
 
    return Container(
      margin: EdgeInsets.all(50),
      width: double.infinity,
 
      child: Text(
        question,
        style: TextStyle(
          fontSize: 28
        ),),
    );
  }


}