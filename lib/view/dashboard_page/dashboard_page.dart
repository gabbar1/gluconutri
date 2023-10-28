import 'package:flutter/material.dart';
import 'package:gluconutri/view/fun_gluco_page/fun_gluco.dart';
import 'package:gluconutri/view/gluco_nutri_page/gluco_nutri_page.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_page.dart';


class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(8.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/Images/profile.png'),
              radius: 20.0,
              backgroundColor:
              Colors.transparent,
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            const Divider(),
            lowerBody(),
           // Divider()


          ],),
        )
    );
  }
  lowerBody(){
    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>FunGlucoPage()));
            },
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFEDC641),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top:20,left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fun\nGluco",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Play games and quiz",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),
                  SizedBox(
                    //height: 170,
                    width: MediaQuery.of(context).size.width/1.9,
                    child: const Image(image: AssetImage('assets/Images/fun_gluco.png')),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GlucoNutriPage()));
            },
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFF4977E3),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top:20,left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gluco\nNutri",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Play games and quiz",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),

                   Image(image: AssetImage('assets/Images/gluco_nutrii.png',),height: 170,
                     width: MediaQuery.of(context).size.width/1.9
                   ),

                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFA1D262),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top:20,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gluco\nTrack",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Play games and quiz",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),)
                    ],
                  ),
                ),

                 Image(image: AssetImage('assets/Images/gluco_track.png',),height: 170,
                   width: MediaQuery.of(context).size.width/1.9
                 ),

              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width/2.3,
                decoration: BoxDecoration(
                    color: const Color(0xFF4977E3),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60,40,2,10),
                      child: Image(image: AssetImage('assets/Images/nutri_menu.png',),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 15),
                      child: Text("Nutri\nMenu",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoveryPage()));
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                      color: const Color(0xFF4977E3),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,10,2,10),
                        child: Image(image: AssetImage('assets/Images/nutry_discovory.png',),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 30),
                        child: Text("Nutri\nDiscovery",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      ),
    );
  }

}
