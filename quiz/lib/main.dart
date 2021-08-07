import 'package:flutter/material.dart';
import 'package:quizz/screens/bestscore.dart';
import 'package:quizz/screens/login.dart';
import 'package:quizz/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Screen_splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  colors: [Colors.yellow, Colors.orangeAccent],
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                                onTap: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                                },
                                child: ButtonTheme(
                                  minWidth: 150.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    child: Text('Jouer'),
                                    color: Colors.blue,
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
                                  minWidth: 150.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    child: Text('Meilleurs Scores'),
                                    color: Colors.white,
                                    textColor: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BestScore()));
                                    },
                                  ),
                                )),
                          ),
                        ]),
                    Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Center(child: Image.asset('assets/myquiz.png'))),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                          },
                          child: ButtonTheme(
                            minWidth: 230.0,
                            height: 50.0,
                            child: RaisedButton(
                              child: Text('Commencer'),
                              color: Colors.green,
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            ),
                          )),
                    ),
                  ],
                ))));
  }
}
