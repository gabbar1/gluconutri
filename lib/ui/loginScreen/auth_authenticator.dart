import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gluconutri/ui/home/home.dart';
import 'package:gluconutri/ui/welcomeScreen/welcomeScreen.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_navigator/dashboard_navigator.dart';

class Authenticator extends StatefulWidget {
  const Authenticator({Key? key}) : super(key: key);

  @override
  State<Authenticator> createState() => _AuthenticatorState();
}

class _AuthenticatorState extends State<Authenticator> {

  @override
  void initState() {
    // TODO: implement initState
   Future.delayed(Duration(seconds: 2),() {
     isLogin();
   },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   // FirebaseAuth.instance.signOut();
    return Scaffold(
      backgroundColor: Color(0xFF6FBA0E),
        body: Center(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Images/glucontris_welcome.png"),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Discover the solution to simplify your life, take control of your blood sugar, and empower your health!",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
            )
          ],
        )));
    return StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot) {

      if(snapshot.hasData){
        return HomeNavigator();
      }else {
        return WelcomeScreen();
      }


    },);
  }
}

isLogin()async{
 Get.offAll(AuthService().handleAuth());
}

class AuthService extends ChangeNotifier {
  AuthService();
  handleAuth() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context,spanshot){
          if(spanshot.hasData){
            return HomeNavigator();
          } else {
            return WelcomeScreen();
          }

        }
    );
  }

  signOut() {
    FirebaseAuth.instance.signOut();
    notifyListeners();
  }





}