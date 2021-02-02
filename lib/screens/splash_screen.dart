import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz/helper_functions.dart';
import 'package:quiz/screens/homepage.dart';
import 'package:quiz/theme/ui_helpers.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Timer _timer;
  bool isUserLoggedIn;
  bool isUserDetailsUploaded;


  getUserDetailsUploadedStatus() async {
    await HelperFunctions.getUserDetailsUploadedStatus().then((value) {
      setState(() {
        isUserDetailsUploaded = value;
      });
    });
  }

  @override
  void initState() {
    getUserDetailsUploadedStatus();
    navigation();
    super.initState();
  }

  navigation() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
     Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: Hero(
            tag: 'Logo',
            child: Image.asset(
              'assets/images/quiz time.png',
              height: screenWidth(context) * 0.6,
              width: screenWidth(context) * 0.6,
            ),
          ),
        ),
      ),
    );
  }
}
