import 'package:flutter/material.dart';

import 'profile_settings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(3.0),
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                'assets/Images/profile.png'),
            radius: 20.0,
            backgroundColor:
            Colors.transparent,
          ),
        ),
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
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 64,
                    backgroundImage: AssetImage('assets/Images/profile.png'),
                  ),
                  Text("Elezabeth Swann",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("elezabeth.swann@gmail.com",),
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
          ],
        ),
      ),
    );
  }
}
