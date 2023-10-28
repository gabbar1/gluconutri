import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gluconutri/firebase_options.dart';
import 'package:gluconutri/ui/loginScreen/auth_authenticator.dart';
import 'package:gluconutri/ui/loginScreen/controller/login_controller.dart';
import 'package:gluconutri/ui/splash_screen.dart';
import 'package:gluconutri/ui/welcomeScreen/welcomeScreen.dart';

void main() async{

  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  LoginController loginController = Get.put(LoginController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Glocontris',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Authenticator());
  }
}
