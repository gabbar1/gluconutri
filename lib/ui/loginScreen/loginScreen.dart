// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gluconutri/ui/registerScreen/registerScreen.dart';
import 'package:gluconutri/ui/welcomeScreen/welcomeScreen.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_navigator/dashboard_navigator.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_page.dart';

import '../home/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _passwordController.text.length > 0;
    });
  }

  bool isButtonEnabled() {
    return _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF651ECC),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 50.0),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color:
                                    Color(0xFF431A9E), // Slightly darker shade
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(), // Add spacing between buttons
                            Container(
                              decoration: BoxDecoration(
                                color:
                                    Color(0xFF431A9E), // Slightly darker shade
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40.0, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 10.0, 28.0, 20.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod.',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 40.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //SizedBox(height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Email Address',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          child: TextField(
                                            controller: _emailController,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'example@test.com',
                                                hintStyle: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w300)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Password',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          child: TextField(
                                            controller: _passwordController,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'min. 8 characters',
                                              hintStyle: TextStyle(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  ElevatedButton(
                                    onPressed: _isButtonEnabled
                                        ? () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeNavigator()),
                                                      //HomeScreen()),
                                            );
                                          }
                                        : null,
                                    style: ElevatedButton.styleFrom(
                                      //: Color(0xFF1200B3),
                                      shadowColor: Color(0xFF1200B3),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 140.0, vertical: 18.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      elevation: 0.0,
                                    ),
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "or",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          //backgroundColor: Colors.white,
                                          shadowColor: Colors.white,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 80.0, vertical: 15.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            side: BorderSide(
                                                color: Colors.black12),
                                          ),
                                          elevation: 0.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/psd_exports/icons8-google-48.png',
                                              width: 20.0,
                                              height: 20.0,
                                            ),
                                            SizedBox(width: 10.0),
                                            Text(
                                              'Sign up with Google',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 15.0,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          //backgroundColor: Colors.white,
                                          shadowColor: Colors.white,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 80.0, vertical: 15.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            side: BorderSide(
                                                color: Colors.black12),
                                          ),
                                          elevation: 0.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/psd_exports/icons8-apple-50.png',
                                              width: 20.0,
                                              height: 20.0,
                                            ),
                                            SizedBox(width: 10.0),
                                            Text(
                                              'Sign up with Apple',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
          //LoginScreenContent(
          //emailController: _emailController,
          //passwordController: _passwordController,
          //),
          ),
    );
  }
}
