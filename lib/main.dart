import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 65, top: 230),
            padding: EdgeInsets.only(left: 6, top: 10),
            width: 295,
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/images/download.jpg',
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Text(
                        "Your Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_rounded,
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                              5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Success is Journery not distination",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/OIP.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    // Padding(padding: EdgeInsets.only(left: 25),),
                    Icon(
                      Icons.library_add,
                    ),
                    Text(
                      "Like",
                    ),
                    Icon(
                      Icons.comment,
                    ),
                    Text(
                      "Comment",
                    ),
                    Icon(
                      Icons.ios_share,
                    ),
                    Text(
                      "Share",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
