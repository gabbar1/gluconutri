import 'package:flutter/material.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_page.dart';
import 'package:gluconutri/view/fun_gluco_page/fun_gluco.dart';


class HomeNavigator extends StatefulWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  State<HomeNavigator> createState() => _HomeNavigatorState();
}

Widget pages(int _currentIndex){
  switch(_currentIndex){
    case 0 :
      return const DashBoardPage();
    case 1 :
      return const DashBoardPage();
    case 2 :
      return const FunGlucoPage();
    case 3 :
      return const FunGlucoPage();
    case 4 :
      return const FunGlucoPage();
    default :
      return const DashBoardPage();
  }
}

int _currentIndex = 0;


class _HomeNavigatorState extends State<HomeNavigator> {
  @override
  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF651DCB),
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 14,
          backgroundColor: Colors.grey.shade100,
          //onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/Images/home.png"),height: 30,color: Colors.grey,),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/Images/shoe.png"),height: 25,),
                label: "Track"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/Images/game-console.png"),height: 25,),
                label: "Fungluco"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/Images/calendar.png"),height: 25,),
                label: "Calander"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/Images/more.png"),height: 25,),
                label: "More"),
          ]),
    );
  }
}
