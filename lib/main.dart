import 'package:flutter/material.dart';
import 'package:shop1/LoginScreen/login.dart';
import 'package:shop1/MyLogin/MyLogin.dart';
import 'package:shop1/QuizApp/quiz.dart';
import 'package:shop1/newsapp/NewsApp.dart';
import 'MyLogin/register.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyLogin(),
      routes: {
        'register': (context) => Register(),
        'login': (context)    => MyLogin(),
      },
    );
  }
}
