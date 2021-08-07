import 'package:flutter/material.dart';
import 'package:quizz/main.dart';
import 'package:splashscreen/splashscreen.dart';

class Screen_splash extends StatefulWidget {
  const Screen_splash({Key key}) : super(key: key);

  @override
  _Screen_splash createState() => _Screen_splash();
}

class _Screen_splash extends State<Screen_splash> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SplashScreen(
      backgroundColor: Colors.orangeAccent,
      seconds: 5,
      navigateAfterSeconds: MyHomePage(),
      image: Image.asset('assets/myquiz.png'),
      photoSize: 100.0,
      loadingText: Text("Powered by MJcode Group"),
      loaderColor: Colors.transparent,
    ));
  }
}
