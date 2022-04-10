import 'package:flutter/material.dart';
import 'package:shop1/LoginScreen/login.dart';
import 'package:shop1/newsapp/NewsApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: NewsApp(),
    );
  }
}
