import 'package:flutter/material.dart';

class NutriDiscoveryCategories extends StatefulWidget {
  const NutriDiscoveryCategories({Key? key}) : super(key: key);

  @override
  State<NutriDiscoveryCategories> createState() => _NutriDiscoveryCategoriesState();
}

class _NutriDiscoveryCategoriesState extends State<NutriDiscoveryCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: foodMenu(),
    );
  }
  foodMenu(){
    return Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 30),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                elevation: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width/2.4,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image(image: AssetImage("assets/Images/omlate.png"),height: 140,width: 140,)),
                    Positioned(
                        bottom: 15,
                        left: 10,
                        child: Text("Prime Plate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                elevation: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width/2.4,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image(image: AssetImage("assets/Images/omlate.png"),height: 140,width: 140,)),
                    Positioned(
                        bottom: 15,
                        left: 10,
                        child: Text("Breakfast",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                  ],
                ),
              ),
            ),

          ],
        ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                elevation: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width/2.4,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image(image: AssetImage("assets/Images/omlate.png"),height: 140,width: 140,)),
                    Positioned(
                        bottom: 15,
                        left: 10,
                        child: Text("Salads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                elevation: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width/2.4,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image(image: AssetImage("assets/Images/omlate.png"),height: 140,width: 140,)),
                    Positioned(
                        bottom: 15,
                        left: 10,
                        child: Text("Desserts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                  ],
                ),
              ),
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 1,
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Image(image: AssetImage("assets/Images/food1.png"),height: 140,width: 140,)),
                  Positioned(
                      bottom: 15,
                      left: 10,
                      child: Text("Few Ingredients Delights",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              elevation: 1,
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Image(image: AssetImage("assets/Images/food1.png"),height: 140,width: 140,)),
                  Positioned(
                      bottom: 15,
                      left: 10,
                      child: Text("Snacks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
                ],
              ),
            ),
          ),
        ),
      ],
    ),);
  }
}
