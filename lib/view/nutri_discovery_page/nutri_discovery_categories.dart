import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_search_page.dart';

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
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoverySeachPage(initialTabIndex:1)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1,), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
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
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoverySeachPage(initialTabIndex:2)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1,), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
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
                ),
              ),

            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoverySeachPage(initialTabIndex:3)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1,), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
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
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoverySeachPage(initialTabIndex:4)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1,), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
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
                ),
              ),

            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 1,), // changes the position of the shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
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
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 2,), // changes the position of the shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
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
          ),
        ],
      ),);
  }
}
