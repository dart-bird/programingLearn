import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = DefaultTextStyle.of(context).style;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[400],
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '개발자를 위해 기부를 ... ㅠ^ㅠ',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                Image(
                  image:
                      AssetImage('images/coin4500102.png'), //시각: 새벽 4시50분 1월 2일
                ),
              ]),
        ),
      ),
    );
  }
}
