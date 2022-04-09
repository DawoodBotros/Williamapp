import 'package:flutter/material.dart';
import 'package:shop1/LoginScreen/login.dart';
import 'package:shop1/newsapp/Screen2.dart';

class NewsApp extends StatelessWidget {
  List <String> imagespath =[
    'https://cdn.cnn.com/cnnnext/dam/assets/220225095200-ukraine-russia-conflict-022522-super-tease.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225180808-kyiv-explosion-0226-super-tease.jpg',
    'https://imagez.tmz.com/image/2b/16by9/2022/02/25/2b31d8b0925b400882e2a4bf7e0c3f23_xl.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225095200-ukraine-russia-conflict-022522-super-tease.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225180808-kyiv-explosion-0226-super-tease.jpg',
    'https://imagez.tmz.com/image/2b/16by9/2022/02/25/2b31d8b0925b400882e2a4bf7e0c3f23_xl.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225180808-kyiv-explosion-0226-super-tease.jpg',
    'https://imagez.tmz.com/image/2b/16by9/2022/02/25/2b31d8b0925b400882e2a4bf7e0c3f23_xl.jpg'
  ];
  List <String> text =[
    'Fly Your Name for Free Around the Moon on NASA',
    'Videos show explosions and gunfire around Ukrainian capital - CNN',
    'Kylie Jenner Back in Action Just 3 Weeks After Giving Birth - TMZ',
    'Fly Your Name for Free Around the Moon on NASA',
    'Videos show explosions and gunfire around Ukrainian capital - CNN',
    'Kylie Jenner Back in Action Just 3 Weeks After Giving Birth - TMZ',
    'Videos show explosions and gunfire around Ukrainian capital - CNN',
    'Kylie Jenner Back in Action Just 3 Weeks After Giving Birth - TMZ'
  ];


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
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: ListView.separated(
                itemCount: imagespath.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)
                            {
                               return DetaolsScreen(imagespath[index],text[index]);
                            }
                    ));
                  },
                  child: Row(
                    children: [
                      Image(
                        height: 100,
                        image: NetworkImage(imagespath[index]),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Text(text[index]),
                      ),
                    ],
                  ),
                  );
                },
                separatorBuilder: (BuildContext context, index) => SizedBox(
                      height: 10,
                    ))));
  }
}
