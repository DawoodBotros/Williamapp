import 'package:flutter/material.dart';
import 'package:shop1/QuizApp/Quizmodel.dart';

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Quiz quizobj = Quiz();
  bool ser = false;
  bool ser1 = false;



  var w = Colors.white;
  var b = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        children: [
          Text(
            quizobj.quizList[2],
          ),
          Checkbox(
              value:ser ,
              onChanged: (v){
                setState(() {
                  ser =! ser;
                  print(ser);
                });
              }
          ),
          RadioListTile(
              value: 0,
              groupValue: 0,
              onChanged: (s){
                setState(() {
                });
              }
          ),
        ],
      ),
    );
  }
}
