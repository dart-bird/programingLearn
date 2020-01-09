import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('image/krumaska.png'),
              ),
              Text(
                'Krumaska',
                style: TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'GETGIT',
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.language,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'https://github.com/krumaska',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Overpass',
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'okokrt@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Overpass',
                        color: Colors.blue.shade900,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
