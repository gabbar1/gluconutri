import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';
import 'package:gluconutri/view/nutri_discovery_page/prime_plate.dart';

class NutriDiscoverySearchAll extends StatefulWidget {
  const NutriDiscoverySearchAll({Key? key}) : super(key: key);

  @override
  State<NutriDiscoverySearchAll> createState() => _NutriDiscoverySearchAllState();
}

class _NutriDiscoverySearchAllState extends State<NutriDiscoverySearchAll> {
  List<Data> item = <Data>[
    Data(
        image: "https://drive.google.com/uc?id=1MSv97bQyvnSOUL01TPX0tx_t3F2oiXlL",
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
        image: "https://drive.google.com/uc?id=1pxlF4lcGz6q2PgTzoG7rGM4FBP-qTlZl",
        name: "Chocolate Chip Cookies",
        description: "Cookies are small, sweet,\nbaked treats that come in\na variety of shapes, sizes,\nand flavors.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 80,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 48
          ),
          Nutritions(
            name: "Fat",
            amount: 6,
          ),
          Nutritions(
            name: "Protein",
            amount: 8,
          ),
        ],
        fullDescription: "Cookies are delightful, bite-sized baked treats that come in a wide variety of flavors, textures, and shapes. They are a beloved and versatile dessert enjoyed by people of all ages around the world.\n\nGluten-Free Cookies: Made with alternative flours for those with gluten sensitivities.\n\nVegan Cookies: Prepared without animal products, often using substitutes like flax eggs or vegan butter.\n\nHealthy Cookies: Feature ingredients like whole grains, nuts, and natural sweeteners for a healthier option.",
        indgredians: "Flour\nSugar\nStrawberries\nBlueberries\nEggs\nFlavorings: Vanilla extract, almond extract\nMix-ins: Chocolate chips, nuts, dried fruits"

    ),
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
    Data(
        image: "https://drive.google.com/uc?id=1Up5WaN3XI_KptLEjG7zhjNwmDAypPsex",
        name: "Charred Chicken With Sweet Potatoes\nand Oranges",
        description: "This is a flavorful and well-balanced dish\nthat combines thesmokiness of charred\nchickenwith the sweetness of roasted\nsweet potatoes and the citrusy\nbrightness of oranges.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 450,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 60
          ),
          Nutritions(
            name: "Fat",
            amount: 20,
          ),
          Nutritions(
            name: "Protein",
            amount: 30,
          ),
        ],
        fullDescription: "Charred Chicken with Sweet Potatoes and Oranges is a flavorful and well-balanced dish that combines the smokiness of charred chicken with the sweetness of roasted sweet potatoes and the citrusy brightness of oranges.\n\nThe combination of charred chicken, sweet potatoes, and citrusy oranges creates a well-balanced and satisfying meal that is both visually appealing and delicious.",
        indgredians: "Chicken \nSweet Potatoes\nOranges\nSeasonings: cumin, paprika, garlic powder, salt, and pepper.\nBell peppers\nHoney or Maple Syrup (Optional)"
    ),
    Data(
        image: "https://drive.google.com/uc?id=1vM9N32v9Awm41KZYdmilQocYjf9aabi2",
        name: "Kadhai Paneer",
        description: "Kadhai Paneer is a popular and\nflavorful North Indian dish that\nfeatures paneer(Indian cottage\ncheese) cooked in a\nspiced tomato-based gravy.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 400,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 20
          ),
          Nutritions(
            name: "Fat",
            amount: 30,
          ),
          Nutritions(
            name: "Protein",
            amount: 20,
          ),
        ],
        fullDescription: "Kadhai Paneer is a popular and flavorful North Indian dish that features paneer (Indian cottage cheese) cooked in a spiced tomato-based gravy. The name Kadhai refers to the traditional Indian wok-like cooking utensil called a kadhai or karahi, which is often used to prepare this dish. The use of the kadhai imparts a unique taste and texture to the dish.",
        indgredians: "Paneer (Indian Cottage Cheese)\nTomatoes\nCapsicum (Bell Peppers)\nOnions\nGinger and Garlic\nGreen Chilies\nKadhai Masala\nFresh Coriander\nOther Spices: Common spices include turmeric, red chili powder, garam masala"

    ),
  ];

  List<Data> get getItem => item;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
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
