
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(this.imgePath) : super();
  @override
  _detailState createState() => _detailState(imgePath);
  final String imgePath;
}

//late SharedPreferences sharedPrefObject;

class _detailState extends State<DetailScreen> {
  _detailState(this.imagePath);
  //var email;
  var imagePath;
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    //SharedPreferences sharedPrefObject = await SharedPreferences.getInstance();
    //email = sharedPrefObject.get("email");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 20,),
            Image.asset(imagePath),
            SizedBox(height: 100,),
            Row(
              children: [
                SizedBox(width: 50,),
                Text("This is details screen. \nWe have all the details of the screen \ntht you re selected in the home page. \nThinkas for reading")
              ],
            ),
          ],
        ),
      ),
    );
  }
}




