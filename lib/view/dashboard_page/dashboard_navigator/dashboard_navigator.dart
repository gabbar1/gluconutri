import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';
import 'package:gluconutri/ui/home/controller/home_controller.dart';
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
      return  FunGlucoPage();
    case 3 :
      return  FunGlucoPage();
    case 4 :
      return  FunGlucoPage();
    default :
      return const DashBoardPage();
  }
}

int _currentIndex = 0;


class _HomeNavigatorState extends State<HomeNavigator> {

  @override
  void initState() {
    // TODO: implement initState
    homeController.fetchMyDetail();
    super.initState();
  }
  @override
  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: Obx((){
          return Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(8.0),
            child: homeController.getUserDetails.profile!=null? CircleAvatar(
              backgroundImage: NetworkImage(homeController.getUserDetails.profile.toString()),
              radius: 20.0,
              backgroundColor:
              Colors.transparent,
            ):ClipRRect(
              borderRadius: BorderRadius.circular(2000.0),
          child: ProfilePicture(
          name: homeController.getUserDetails.name.toString(),
          radius: 31,
          fontsize: 21,
          ),
          ),
          );
        }),
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx((){
              return Text('Good Day, ${homeController.getUserDetails.name}',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold));
            }),
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
