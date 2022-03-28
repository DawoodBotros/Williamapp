import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
   debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 650,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/OICP.jpg',
          ),
          fit: BoxFit.cover,
        )),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [Colors.black, Colors.black12],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "William Henry Gates ",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 50,
                ),

                const Text(
                  'William Henry Gates III, better known as Bill Gates, and Bill is an acronym for William in the United States of America who is an American businessman, programmer and philanthropist. In 1975, he founded Microsoft with Paul Allan, made his own fortune and owned the largest individual share of its shares, estimated at nine percent of the shares offered.Gates was born and raised in Seattle, Washington. He and Allen founded Microsoft in Albuquerque, New Mexico, in 1975.',
                  style: TextStyle(color: Colors.white, height: 1.4),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  child: Card(
                    shape: StadiumBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Follow",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
