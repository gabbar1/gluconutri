import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';
import 'package:gluconutri/view/nutri_discovery_page/prime_plate.dart';


class NutriDiscoverySalads extends StatefulWidget {
  const NutriDiscoverySalads({Key? key}) : super(key: key);

  @override
  State<NutriDiscoverySalads> createState() => _NutriDiscoverySaladsState();
}

class _NutriDiscoverySaladsState extends State<NutriDiscoverySalads> {
  List<Data> item = <Data>[
    Data(
        image: "https://drive.google.com/uc?id=1MTRqNOH1Pgv1h2_kunC7rxCLGQLeZDST",
        name: "Bean-Salad",
        description: "Bean salads are nutritious and\nflavorful dishes that typically\nfeature a variety of beans\nas the main ingredient",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 150,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 30
          ),
          Nutritions(
            name: "Fat",
            amount: 5,
          ),
          Nutritions(
            name: "Protein",
            amount: 18,
          ),
        ],
        fullDescription: "Bean salads are nutritious and flavorful dishes that typically feature a variety of beans as the main ingredient. These salads are known for their versatility, as they can be customized with different types of beans, vegetables, herbs, and dressings. Here's a general description of a bean salad.\nAdditional Ingredients: You can add other ingredients to tailor the salad to your taste, such as feta or goat cheese, olives, corn, or even nuts and seeds for added crunch.",
        indgredians: "Beans\nVegetables\nLettuce or shredded cabbage\nTomatoes\nBell peppers\nHerbs\nolive oil\nVinegar, lemon juice, garlic"
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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }
  Widget buildingScreen(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? buildingScreen() : Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15),
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
    );
  }
}
