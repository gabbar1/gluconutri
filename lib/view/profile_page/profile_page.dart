import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';
import 'package:gluconutri/ui/home/controller/home_controller.dart';
import 'package:gluconutri/ui/loginScreen/auth_authenticator.dart';
import 'package:gluconutri/utils/navigation.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_navigator/dashboard_navigator.dart';

import 'profile_settings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context, );
        },icon: Icon(Icons.arrow_back_ios_new,color: Colors.black)),
        title: Text("Profile",style: TextStyle(color: Colors.black),),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                children: [
                  Obx((){
                    if(homeController.getUserDetails.profile!=null)
                    return InkWell(
                      onTap: (){

                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(homeController.getUserDetails.profile.toString()),
                        radius: 60.0,
                        backgroundColor:
                        Colors.transparent,
                      ),
                    );
                    else
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(2000.0),
                      child: InkWell(
                        onTap: (){

                        },
                        child: ProfilePicture(
                          name: homeController.getUserDetails.name.toString(),
                          radius: 61,
                          fontsize: 51,
                        ),
                      ),
                    );
                  }),
                  SizedBox(height: 20,),
                  Obx(()=>Text(homeController.getUserDetails.name!,style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 5,),
                  Obx(() => Text(homeController.getUserDetails.email!,)),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSettings()));
              },
              child: ListTile(
                leading:  Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200
                  ),
                  child: Icon(Icons.settings_outlined),
                ),
                title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading:  Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.local_printshop_rounded),
              ),
              title: Text("Bill Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading:  Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.person),
              ),
              title: Text("User Management",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2,),
            SizedBox(height: 10,),
            ListTile(
              leading:  Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.info_rounded),
              ),
              title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading:  Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.arrow_forward),
              ),
              title: Text("Bill Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                FirebaseAuth.instance.signOut();
                CustomNavigation.pushAndRemoveUntil(Authenticator());
              },
              child: ListTile(
                leading:  Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200
                  ),
                  child: Icon(Icons.logout),
                ),
                title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
