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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.language,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    'https://github.com/krumaska',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Overpass',
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    'okokrt@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Overpass',
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
