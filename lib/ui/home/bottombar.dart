import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gluconutri/ui/loginScreen/loginScreen.dart';
import 'package:gluconutri/ui/user/register_page.dart';
import 'package:gluconutri/ui/user/user_login.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

int _page = 0;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 2,
      height: 60.0,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.purple,
        ),
        Image.asset(
          'assets/Images/menu_track.png',
          width: 30,
          height: 30,
        ),
        //Icon(Icons.list, size: 30),
        //Icon(Icons.add, size: 30, color: Color(0xff9677fc),),
        FloatingActionButton(
          onPressed: () {},
          heroTag: Text("btn1"),
          child: Image.asset(
            'assets/Images/menu_games.png',
            width: 30,
            height: 30,
          ),

          //Icon(Icons.videogame_asset),
          backgroundColor: Colors.purple,
        ),
        Image.asset(
          'assets/Images/menu_cal.png',
          width: 30,
          height: 30,
        ),
        Image.asset(
          'assets/Images/menu_more.png',
          width: 30,
          height: 30,
        ),
        //Icon(Icons.perm_identity, size: 30),
      ],
      color: Colors.white,
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      animationCurve: Curves.bounceOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        // click event
        switch (index) {
          case 1:
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
            break;
          case 2:
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserLogin()));
            break;
          case 3:
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserLogin()));
            break;
          case 4:
            //Navigator.of(context) .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            break;
        }
      },
      letIndexChange: (index) => true,
    );
  }
}
