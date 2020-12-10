import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';

import 'answer.dart';


class Quize extends StatelessWidget {

  var questionIndex;
  final questions;
  var answerQuestions;
  Quize({this.questions,this.questionIndex,this.answerQuestions});
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Question(questions[this.questionIndex]['questionText']),
        ...(questions[this.questionIndex]['answerText'] as List<Map<String,Object>>).map((answer) => Answer(this.answerQuestions,answer['text'])).toList(),


      ],
    ),);
  }
}



