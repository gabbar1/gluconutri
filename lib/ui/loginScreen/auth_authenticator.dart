import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gluconutri/ui/home/home.dart';
import 'package:gluconutri/ui/welcomeScreen/welcomeScreen.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_navigator/dashboard_navigator.dart';

class Authenticator extends StatelessWidget {
  const Authenticator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // FirebaseAuth.instance.signOut();
    return StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot) {

      if(snapshot.hasData){
        return HomeNavigator();
      }else {
        return WelcomeScreen();
      }
    },);
  }
}
