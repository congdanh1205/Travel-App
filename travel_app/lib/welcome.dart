import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _WelcomePage(),
    );
  }
}

class _WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox(
              height: 300,
            ),
            Text(
              'VietNamTravel',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Positioned.fill(
              child: Image.asset(
                'assets/travel.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 500),
              child: Center(
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.cyanAccent,
                    padding: EdgeInsets.all(20),
                    onPressed: () {},
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
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
