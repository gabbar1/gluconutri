import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';
import 'package:gluconutri/view/nutri_discovery_page/prime_plate.dart';

class NutriDiscoveryBreakfast extends StatefulWidget {
  const NutriDiscoveryBreakfast({Key? key}) : super(key: key);

  @override
  State<NutriDiscoveryBreakfast> createState() => _NutriDiscoveryBreakfastState();
}

class _NutriDiscoveryBreakfastState extends State<NutriDiscoveryBreakfast> {

  List<Data> item = <Data>[
    Data(
        image: "https://drive.google.com/uc?id=1P6jPpEg8iTWTx3paFg1ren-hqZQhFl82",
        name: "Grill sandwich",
        description: "Grilled sandwiches are a versatile\nand quick meal option,enjoyed by\npeopleof all ages.They can\nbe served as astandalone snack,\nlunch, or dinner",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 160,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 60
          ),
          Nutritions(
            name: "Fat",
            amount: 15,
          ),
          Nutritions(
            name: "Protein",
            amount: 8,
          ),
        ],
        fullDescription: "Burritos are often associated with Mexican cuisine but have become popular worldwide. They can be served in a variety of styles, including grilled, steamed, or baked. Some common variations include burrito bowls, where the ingredients are served in a bowl without the tortilla, and breakfast burritos, which include breakfast ingredients like eggs and bacon.",
        indgredians: "Bread \nCheese \nButter or oil\nVegetables\nBell peppers\nSour Cream\nHot Sauce"
    ),
    Data(
        image: "https://drive.google.com/uc?id=1vOPYOcb54WzDKteyNbuyiSnTNDB78djF",
        name: "Italian Style california Buretto combo",
        description: "Popular domburi dish consisteing\nof vegs and onions served over a bowl of\nnuts.The meat and onion are cooked in a\nmixture of soy sauce, mirin,\nsugar and sake.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 2.5,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 50
          ),
          Nutritions(
            name: "Fat",
            amount: 10,
          ),
          Nutritions(
            name: "Protein",
            amount: 30,
          ),
        ],
        fullDescription: "Burritos are often associated with Mexican cuisine but have become popular worldwide. They can be served in a variety of styles, including grilled, steamed, or baked. Some common variations include burrito bowls, where the ingredients are served in a bowl without the tortilla, and breakfast burritos, which include breakfast ingredients like eggs and bacon.",
        indgredians: "Tortilla\nRice\nLettuce or shredded cabbage\nTomatoes\nBell peppers\nSour Cream\nHot Sauce"
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
              SingleChildScrollView(
                child: SizedBox(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
