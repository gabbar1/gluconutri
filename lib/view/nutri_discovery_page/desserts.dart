import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';
import 'package:gluconutri/view/nutri_discovery_page/prime_plate.dart';

class NutriDiscoveryDesserts extends StatefulWidget {
  const NutriDiscoveryDesserts({Key? key}) : super(key: key);

  @override
  State<NutriDiscoveryDesserts> createState() => _NutriDiscoveryDessertsState();
}

class _NutriDiscoveryDessertsState extends State<NutriDiscoveryDesserts> {
  List<Data> item = <Data>[
    Data(
        image: "https://drive.google.com/uc?id=1pxlF4lcGz6q2PgTzoG7rGM4FBP-qTlZl",
        name: "Choco lava cake",
        description: "Choco lava cake is a small \nindividual chocolate cake with a rich\nand moist exterior and a gooey,\nmolten chocolate center.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 300,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 50
          ),
          Nutritions(
            name: "Fat",
            amount: 25,
          ),
          Nutritions(
            name: "Protein",
            amount: 8,
          ),
        ],
        fullDescription: "Choco lava cake is a small individual chocolate cake with a rich and moist exterior and a gooey, molten chocolate center. The magic of this dessert lies in the contrast between the outer cake layer, which is slightly firm, and the warm, liquid chocolate inside that flows out when the cake is cut or bitten into.",
        indgredians: "2 large eggs\n1/4 cup all-purpose flour\n2 large egg yolks\n1/2 cup granulated sugar\n1/2 cup (1 stick) unsalted butter"
    ),
    Data(
        image: "https://drive.google.com/uc?id=1tjD72CdSikv3Vpi6nJKmPH8Ywstgizsp",
        name: "Fruit salad",
        description: "Popular domburi dish consisteing\nof vegs and onions served over a bowl of\nnuts.The meat and onion are cooked in a\nmixture of soy sauce, mirin,\nsugar and sake.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 2.5,
        fullDescription: "Fruit salad breakfast is a refreshing and nutritious morning dish made by combining a variety of fresh fruits. It typically includes a colorful mix of fruits such as berries, melons, citrus, and tropical fruits, chopped and served together. This light and healthy option provides a burst of vitamins, antioxidants, and natural sweetness to start the day on a delicious and energizing note.\n\nThis breakfast option is not only visually appealing but also packed with essential nutrients like vitamins, minerals, and fiber.",
        indgredians: "Strawberries\nBlueberries\nPineapple chunks\nWatermelon cubes\nGrapes (red or green)\nKiwi slices\nOrange segments"

    ),
  ];
//
  List<Data> get getItem => item;
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
                      itemCount: item.length,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoveryItemDetails(data: item[index],)));
                          },
                          child: Container(
                            height: 165,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                //Image(image: AssetImage("assets/Images/nutri_discovery_food.png"),height: 150,width: 140,),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(getItem[index].image.toString(),height: 130,width: 140,fit: BoxFit.fill)
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 3,),
                                      Text(
                                        getItem[index].name ?? "name",
                                        //"Italian Style california Buretto combo",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                                      Text(getItem[index].description.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              ClipOval(child: Image.network(getItem[index].authorImage.toString(),height: 22,width:22,fit: BoxFit.cover,)),
                                              SizedBox(width: 5,),
                                              Text(
                                                getItem[index].author.toString(),
                                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),)
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

