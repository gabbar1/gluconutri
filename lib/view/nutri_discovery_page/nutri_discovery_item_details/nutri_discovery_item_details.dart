import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/search_all.dart';

class NutriDiscoveryItemDetails extends StatefulWidget {
  final Data data;
   NutriDiscoveryItemDetails({required this.data});

  @override
  State<NutriDiscoveryItemDetails> createState() => _NutriDiscoveryItemDetailsState();
}

class _NutriDiscoveryItemDetailsState extends State<NutriDiscoveryItemDetails> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color(0xFF651ECC),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Item Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        InkWell(
                            onTap:(){
                              Navigator.pop(context);
                            },child: Icon(Icons.clear,color: Colors.white,)),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100.0,right: 20,left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.data.name.toString(),
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Row(
                                children: [
                                  Image(image: AssetImage("assets/Images/fire.png"),color: Colors.red,height: 15,),
                                  Text("350 Kcal",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
                                ],
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Image(image: AssetImage("assets/Images/clock.png"),color: Colors.green,height: 15,),
                                  Text("45 min",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
                                ],
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Image(image: AssetImage("assets/Images/star.png"),color: Colors.yellow,height: 15,),
                                  Text("4.9",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
                                  Text("(1.7k Reviews)",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),),
                                ],
                              ),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("Nutritions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                      //widget.data.nutritions!.first.amount.toString(),
                                    "35",
                                    style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Color(0xFF651ECC)),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Color(0xFF651ECC)),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                       // widget.data.nutritions.map((e) => e.name)
                                        "Carbohydrates",
                                        style: TextStyle(color: Colors.black),)
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text("7.2",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color:  Colors.blueAccent),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color:  Colors.blueAccent),
                                      ),
                                      SizedBox(width: 5,),
                                      Text("Protein",style: TextStyle(color: Colors.black),)
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text("0.2",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.orange),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.orange),
                                      ),
                                      SizedBox(width: 5,),
                                      Text("Fat",style: TextStyle(color: Colors.black),)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(height: 10,),
                          Text(
                            widget.data.fullDescription.toString(),
                            style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
                          SizedBox(height: 20,),
                          Text("Ingredients",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(height: 10,),
                          Text(
                            widget.data.indgredians.toString(),
                            style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey,fontSize: 16),),


                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
            Positioned(
                top: 140,
                left: 110,
                child: ClipOval(child: Image.network(widget.data.image.toString(),height: 175,width: 175,fit: BoxFit.cover,))),
            /*Positioned(
                top: 315,
                left: 140,
                child:Text(
                  //widget.data.name.toString(),
                  "Indian Buretto",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
            ),*/

          ],
        ),
      ),
    );
  }
}
