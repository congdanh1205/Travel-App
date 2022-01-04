import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'icons/app_icons.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  Widget _titleSection(String text) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(0, 0, 200, 0),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    BoxDecoration myBoxDecoration(Color color) {
      return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
            Radius.circular(10) //         <--- border radius here
            ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 300, 0),
              child: IconButton(
                color: Colors.black,
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(MyFlutterApp.arrow_back),
              ),
            ),
            _titleSection("Đăng nhập"),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      width: 30,
                      decoration: myBoxDecoration(Colors.white),
                      child: Image.asset('assets/google.jpg'),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 30,
                      height: 55,
                      decoration: myBoxDecoration(Colors.blue),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 10, 5),
                          child: Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 55,
                      width: 30,
                      decoration: myBoxDecoration(),
                      child: Image.asset('assets/facebook.png'),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 30,
                      height: 55,
                      decoration: myBoxDecoration(),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 10, 5),
                          child: Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
