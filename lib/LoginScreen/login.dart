import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop1/newsapp/NewsApp.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkey = GlobalKey<FormState>();
  var userController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.deepPurple, Colors.red])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40, top: 40),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                    Image(
                      height: 100,
                      image: AssetImage(
                        'assets/images/OIP2.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
                gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
                  Colors.blueGrey,
                  Colors.white70,
                  Colors.grey,
                ]),
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: userController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يحتوي علي اسم المستخدم';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(),
                            enabled: true,
                            focusedBorder: UnderlineInputBorder(),
                            hintText: "user name",
                            labelText: "User Name",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'يحتوي علي رموز وحروف وارقام';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(),
                            enabled: true,
                            focusedBorder: UnderlineInputBorder(),
                            hintText: "password",
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        RaisedButton(
                          color: Colors.blue,
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              print(userController.text);
                              print(passwordController.text);
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
