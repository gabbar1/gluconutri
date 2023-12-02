import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';
import 'package:gluconutri/view/nutri_discovery_page/prime_plate.dart';

class NutriDiscoveryFavorites extends StatefulWidget {
  const NutriDiscoveryFavorites({Key? key}) : super(key: key);

  @override
  State<NutriDiscoveryFavorites> createState() => _NutriDiscoveryFavoritesState();
}

class _NutriDiscoveryFavoritesState extends State<NutriDiscoveryFavorites> {

  List<Data> item = <Data>[
    Data(
        image: "https://drive.google.com/uc?id=1-ZRwUkNYUEUju4a1a6ilwAbEezhtjKIk",
        name: "Maxican Chicken & Veg Delight Tacos",
        description: "These Mexican Chicken & Veg Delight\nTacos offer a combination of savory\nchicken, vibrant vegetables, and fresh\ntoppings, creating a delicious\nand satisfying meal.",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 350,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 30
          ),
          Nutritions(
            name: "Fat",
            amount: 10,
          ),
          Nutritions(
            name: "Protein",
            amount: 20,
          ),
        ],
        fullDescription: "These Mexican Chicken & Veg Delight Tacos offer a combination of savory chicken, vibrant vegetables, and fresh toppings, creating a delicious and satisfying meal. Feel free to adjust the ingredients and quantities to suit your taste preferences.",
        indgredians: "Chicken\nVegetables\nTortillas\Guacamole\nSalsa\nLime wedges\nCilantro"
    ),
    Data(
        image: "https://drive.google.com/uc?id=1wn58WdnBqZ6uep5QTPaTZVzOCTQzc5Eh",
        name: "Molletes",
        description: "Molletes are a simple and delicious\nMexican dish that typically consists\nof half a bolillo (a type of Mexican bread\nroll) topped with refried\nbeans and melted cheese. ",
        author: "Penelope Cruz",
        authorImage: "https://drive.google.com/uc?id=1ZQbxVrsl84ZVQuP4CNU4c4TpzHIkuHPY",
        calory: 250,
        nutritions: [
          Nutritions(
              name: "Carbohydrates",
              amount: 30
          ),
          Nutritions(
            name: "Fat",
            amount: 8,
          ),
          Nutritions(
            name: "Protein",
            amount: 15,
          ),
        ],
        fullDescription: "Molletes are a simple and delicious Mexican dish that typically consists of half a bolillo (a type of Mexican bread roll) topped with refried beans and melted cheese. The bread is often toasted or grilled to give it a crunchy texture. Sometimes, molletes are also topped with other ingredients like pico de gallo, guacamole, or salsa.",
        indgredians: "Bolillo\nRefried Beans\nCheese\nA fresh salsa with tomatoes\nCilantro\nOnions\nEggs"

    ),
  ];

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
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? buildingScreen() : favoriteFoodList()
    );
  }
  favoriteFoodList(){
    return Padding(padding:const EdgeInsets.only(left: 15,right: 15,top: 30),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio:.9,crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 15,),
            itemCount: item.length,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutriDiscoveryItemDetails(data: item[index],)));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Image.network(getItem[index].image.toString(),height: 100,fit: BoxFit.fill),
                          //Image(image: AssetImage("assets/Images/favoritefood.png"),height: 100),
                          Positioned(
                            top:5,
                            right: 5,
                            child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                                child: Icon(Icons.favorite,color: Colors.red,size: 20,)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: Text(
                          getItem[index].name ?? "name",
                          style: TextStyle(fontSize: 16),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(width: 2,),
                          const Image(image: AssetImage("assets/Images/fire.png"),height: 12,),
                          Text(
                            "${getItem[index].calory.toString()}Kcal",
                            style: TextStyle(fontSize: 12,color: Colors.grey.shade400),),
                          const SizedBox(width: 20,),
                          const Image(image: AssetImage("assets/Images/clock.png"),height: 12,),
                          Text("45 min",style: TextStyle(fontSize: 12,color: Colors.grey.shade400),),
                          SizedBox(width: 2,),
                        ],
                      ),
                      SizedBox(height: 1,)
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
