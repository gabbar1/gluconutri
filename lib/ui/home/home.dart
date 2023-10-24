import 'package:gluconutri/ui/home/bottombar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gluconutri/ui/loginScreen/loginScreen.dart';

List imagesArray = [
  "assets/Images/prasad.jpg",
  "assets/Images/a.png",
  "assets/Images/b.png",
  "assets/Images/c.png",
  "assets/Images/d.png",
  "assets/Images/e.png"
];
List imagesArray1 = [
  "assets/Images/f.png",
  "assets/Images/g.png",
  "assets/Images/h.png",
  "assets/Images/c.png",
  "assets/Images/d.png",
  "assets/Images/e.png"
];

List titleArray = ["News 1", "News 2", "News 3", "News 4", "News 5", "News 6"];
List selectorAr = [true, true, true, true, true, true];
List colAr = [
  Colors.black12,
  Colors.black12,
  Colors.black12,
  Colors.black12,
  Colors.black12,
  Colors.black12
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

void _handleButtonPress(int index) {
  // Implement action for each button
  print('Button $index pressed!');
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(8.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/Images/profile.png'), // Replace with your image asset
              radius: 20.0,
              backgroundColor:
                  Colors.transparent, // Set background color to transparent

              // Adjust the radius as needed
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Good Day, Eleizabeth',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Text(
                'Today you are in control of your health',
                style: TextStyle(fontSize: 12.0, color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/Images/notification.png',
                width: 30,
                height: 30,
              ), //Icon(Icons.notifications),
              onPressed: () {
                // Implement notification icon action
              },
            ),
          ],
        ),

        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Align buttons horizontally
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _handleButtonPress(0),
                child: Image.asset(
                  'assets/Images/home_l1.png', // Replace with your image path
                  width: double.infinity, // Adjust image width as needed
                  height: 100, // Adjust image height as needed
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _handleButtonPress(1),
                child: Image.asset(
                  'assets/Images/home_l2.png', // Replace with your image path
                  width: double.infinity, // Adjust image width as needed
                  height: 100, // Adjust image height as needed
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _handleButtonPress(2),
                child: Image.asset(
                  'assets/Images/home_l3.png', // Replace with your image path
                  width: double.infinity, // Adjust image width as needed
                  height: 100, // Adjust image height as needed
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _handleButtonPress(3),
                child: Image.asset(
                  'assets/Images/home_l4.png', // Replace with your image path
                  width: double.infinity, // Adjust image width as needed
                  height: 100, // Adjust image height as needed
                ),
              ),
            )
          ],
        ),

        //bottomNavigationBar: NowPlaying(),  // call the bottom bar related class
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }

  void _onLoginPressed() {
    print("login button clicked");
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
