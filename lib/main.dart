import 'package:flutter/material.dart';
import 'package:flutter_app/quize.dart';
import 'package:flutter_app/result.dart';


 void main()=>runApp(MyApp());


 class MyApp extends StatefulWidget {
    @override
   State<StatefulWidget> createState(){
      return MyAppState();
    }


 }
 class MyAppState extends State<MyApp>{
   var _questionIndex=0;
   void answerQuestions(){
     print("Questions have been answered");

     setState(() {


      this._questionIndex +=1;
     });


   }
  @override
   build(BuildContext context) {

     final _questions=const[
       {'questionText':'What\'s your favorite color?','answerText':[
         {'text':'Red','score':4},
         {'text':'Black','score':10},

        ]},
       {'questionText': 'What\'s your favorite animal?','answerText':[
         {'text':'Lion','score':4},
         {'text':'Cat','score':6},
         {'text':'Dog','score':1},
         {'text':'Rabit','score':9},
        ]},
       {'questionText':'What\'s your favorite instructor?',
         'answerText':[
           {'text':'Max','score':5},
           {'text':'Max','score':6},
           {'text':'Max','score':2},
       ]}
     ];




     return MaterialApp(home: Scaffold(
       appBar: AppBar(
         title: Text("My First App "),
       ),
       body: this._questionIndex < _questions.length ?
       Quize(
           questions: _questions,
           questionIndex: this._questionIndex,
           answerQuestions: this.answerQuestions) : Result()));

   }
 }
