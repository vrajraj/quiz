import 'package:flutter/material.dart';
import 'package:quiz/helper_functions.dart';
import 'package:quiz/screens/homepage.dart';
import 'package:quiz/screens/splash_screen.dart';
import 'package:quiz/services/internet_connectivity.dart';
import 'package:quiz/theme/theme_data.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  InternetConnectivity internetConnectivity;
  @override
  void initState() {
    InternetConnectivity.initConnectivity();
    InternetConnectivity.connectivity.onConnectivityChanged.listen(InternetConnectivity.updateConnectionStatus);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: quizAppTheme,
      home:  Builder(builder: (BuildContext context) {
        return Splashscreen();
      }),
    );
  }
}