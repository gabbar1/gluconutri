import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';
import 'package:gluconutri/view/nutri_discovery_page/search_all.dart';

class NutriSearchLunchPage extends StatefulWidget {
  const NutriSearchLunchPage({Key? key}) : super(key: key);

  @override
  State<NutriSearchLunchPage> createState() => _NutriSearchLunchPageState();
}

class _NutriSearchLunchPageState extends State<NutriSearchLunchPage> {

  List<Data> item = <Data>[
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
              SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: 5,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
