import 'package:flutter/material.dart';
import 'package:gluconutri/ui/splash_screen.dart';
import 'package:gluconutri/ui/welcomeScreen/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Glocontris',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: WelcomeScreen());
  }
}
