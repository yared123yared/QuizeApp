import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  var question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child:Text(this.question,
        style: TextStyle(
        fontSize: 28,
        ),
        textAlign: TextAlign.center,

        ));
  }
}
