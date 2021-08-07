import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizz/models/users.dart';

class Playing extends StatefulWidget {
  final Users user;
  const Playing({Key key, this.user}) : super(key: key);

  @override
  _PlayingState createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(children: [
        SizedBox(
          height: 90,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Score: 90", style: TextStyle(color: Colors.white)),
          Row(children: [
            Text("3", style: TextStyle(color: Colors.white)),
            Icon(Icons.favorite, color: Colors.red)
          ])
        ]),
        SizedBox(height: 40),
        Center(
          child: Container(child: Image.asset('assets/lana.png')),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Qui est-ce?',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
              },
              child: ButtonTheme(
                minWidth: 270.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text('Lana Rose'),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
              },
              child: ButtonTheme(
                minWidth: 270.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text('Lana Rose'),
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
              },
              child: ButtonTheme(
                minWidth: 270.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text('Lana Rose'),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
              },
              child: ButtonTheme(
                minWidth: 270.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text('Lana Rose'),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              )),
        ),
      ]),
    );
  }
}
