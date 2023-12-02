// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:gluconutri/view/extra_menu/extra_menu.dart';
import 'package:gluconutri/view/fun_gluco_page/fun_gluco.dart';
import 'package:gluconutri/view/gluco_nutri_page/gluco_nutri_page.dart';
import 'package:gluconutri/view/gluco_track_page/gluco_track_page.dart';
import 'package:gluconutri/view/my_menu_page/my_menu_page.dart';
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FunGlucoPage(rout: true,)));
            },
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFEDC641),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top:20,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Fun\nGluco",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),

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
                  Positioned(
                      bottom: 35,
                      left: 20,
                      child: Text("Play, Learn, and Health On",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),))
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GlucoNutriPage(rout: true,)));
            },
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFF651ECC),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top:20,left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gluco\nNutri",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),

                      ],
                    ),
                  ),
                  Positioned(
                    left: 140,
                    child: Image(image: AssetImage('assets/Images/gluco_nutrii.png',),height: 160,
                      width: MediaQuery.of(context).size.width/1.5
                  ),),
                  Positioned(
                      bottom: 35,
                      left: 20,
                      child: Text("Schedule Your Dietitian Consultation",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),))
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GlucoTrackPage(rout: true,)));
            },
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top:20,left: 20),
                    child: Text("Gluco\nTrack",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  Positioned(
                    left: 170,
                    child: Image(image: AssetImage('assets/Images/gluco_track.png',),height: 160,
                      width: MediaQuery.of(context).size.width/1.9
                  ),),
                  Positioned(
                      bottom: 35,
                      left: 20,
                      child:Text("Easily Track Your Progress",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),)
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyMenuPage()));
                  },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                      color: const Color(0xFF4977E3).withOpacity(.8),
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
                        child: Text("My\nMenu",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child:Text("Tailored Nutrition,\nJust for You",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),)
                      )
                    ],
                  ),
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
                      color: const Color(0xFF6FBA0E),
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
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child:Text("Explore a World of Nutritious\nand Delicious Recipes",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300),)
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
