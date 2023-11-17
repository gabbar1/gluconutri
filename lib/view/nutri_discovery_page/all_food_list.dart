import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';

class NutriDiscoverySearchAll extends StatefulWidget {
  const NutriDiscoverySearchAll({Key? key}) : super(key: key);

  @override
  State<NutriDiscoverySearchAll> createState() => _NutriDiscoverySearchAllState();
}

class _NutriDiscoverySearchAllState extends State<NutriDiscoverySearchAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoveryItemDetails()));
                          },
                          child: Container(
                            height: 165,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Image(image: AssetImage("assets/Images/nutri_discovery_food.png"),height: 150,width: 140,),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 3,),
                                      Text("Italian Style california Buretto combo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Text("Popular domburi dish consisteing\nof vegs and onions served over a bowl of\nnuts.The meat and onion are cooked in a\nmixture of soy sauce, mirin,\nsugar and sake.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image(image: AssetImage("assets/Images/profile.png"),height: 20,),
                                              Text("Penelope Cruz",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),)
                                            ],
                                          ),
                                          SizedBox(width: 70,),
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(6)
                                            ),
                                            child: Icon(Icons.arrow_forward,size: 18,color: Colors.grey,),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 3,),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
