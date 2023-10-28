import 'package:flutter/material.dart';
import 'package:gluconutri/view/my_menu_page/my_menu_todays_menu/my_menu_todays_menu.dart';

class MyMenuCategories extends StatefulWidget {
  const MyMenuCategories({Key? key}) : super(key: key);

  @override
  State<MyMenuCategories> createState() => _MyMenuCategoriesState();
}

class _MyMenuCategoriesState extends State<MyMenuCategories> {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyMenuTodaysMenu()));
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

            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
          /*Container(
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
          ),*/
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
                    color: Colors.white,
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 140,
                          width: MediaQuery.of(context).size.width/2.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/Images/breakfast1.png"),)
                          ),
                          child: CustomPaint(
                            painter: TrianglePainter(),
                          ),
    ),
                      ],
                    ),
                  ),
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

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Path path = Path();
    path.moveTo(0, size.height); // starting point
    path.lineTo(size.width, size.height); // bottom-right point
    path.lineTo(0,0); // top point

    path.close(); // close the path to form a triangle

    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
