import 'package:flutter/material.dart';

class ExtraMenu extends StatefulWidget {
  const ExtraMenu({Key? key}) : super(key: key);

  @override
  State<ExtraMenu> createState() => _ExtraMenuState();
}

class _ExtraMenuState extends State<ExtraMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF651ECC),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Set Your Goal",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 10,),
                Text("Setting up goals discover your wellness avatar.",style: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.w400 ),),
                SizedBox(height: 30,)
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/weight_loss.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("Weight Loss",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/balance_vlood_suger.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("Balance Blood Suger",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/diabeties.png"),height: 115,),
                          SizedBox(height: 5,),
                          Text("Learn How to eat with diabetes",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/energy.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("Improve Energy level",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/allergy.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("food Allergy or Intolerance",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/dieases.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("Cronic Disease Prevention",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/diabetes.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("Gestational Diabetes",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage("assets/Images/other.png"),height: 120,),
                          SizedBox(height: 5,),
                          Text("Other",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
