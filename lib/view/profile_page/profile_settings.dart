import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  bool _switchValue = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;
  bool _switchValue5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap:(){
              Navigator.pop(context);
            },child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Text("Settings",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Divider(),
          settingList()
        ],
      ),
    );
  }
  settingList(){
    return Padding(padding: EdgeInsets.only(left: 15,right: 15),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text("Allow Notification"),
          trailing: Switch(
            value: _switchValue, // Current state of the Switch
            onChanged: (bool newValue) {
              // Handle switch state changes
              setState(() {
                _switchValue = newValue;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Allow Reminder"),
          trailing: Switch(
            value: _switchValue1, // Current state of the Switch
            onChanged: (bool newValue) {
              // Handle switch state changes
              setState(() {
                _switchValue1 = newValue;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Allow Informative Pop-ups"),
          trailing: Switch(
            value: _switchValue2, // Current state of the Switch
            onChanged: (bool newValue) {
              // Handle switch state changes
              setState(() {
                _switchValue2 = newValue;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Change Language"),
          trailing: Switch(
            value: _switchValue3, // Current state of the Switch
            onChanged: (bool newValue) {
              // Handle switch state changes
              setState(() {
                _switchValue3 = newValue;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Select Measuring Unit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        ListTile(
          title: Text("Metric System"),
          trailing: Switch(
            value: _switchValue4, // Current state of the Switch
            onChanged: (bool newValue) {
              // Handle switch state changes
              setState(() {
                _switchValue4 = newValue;
              });
            },
          ),
        ),
        ListTile(
          title: Text("Imperial System"),
          trailing: Switch(
            value: _switchValue5, // Current state of the Switch
            onChanged: (bool newValue) {
              // Handle switch state changes
              setState(() {
                _switchValue5 = newValue;
              });
            },
          ),
        ),
      ],
    ),
    );
  }
}
