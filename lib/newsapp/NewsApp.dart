import 'package:flutter/material.dart';

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'News',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image(
                height: 100,
                image: AssetImage(
                  'assets/images/download.jpg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
