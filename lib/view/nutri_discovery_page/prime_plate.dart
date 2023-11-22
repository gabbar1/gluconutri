import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_item_details/nutri_discovery_item_details.dart';


class NutriDiscoveryPrimePlate extends StatefulWidget {
  const NutriDiscoveryPrimePlate({Key? key}) : super(key: key);

  @override
  State<NutriDiscoveryPrimePlate> createState() => _NutriDiscoveryPrimePlateState();
}

class _NutriDiscoveryPrimePlateState extends State<NutriDiscoveryPrimePlate> {

  List<Data> item = <Data>[
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

class ItmeModel {
  Data? data;

  ItmeModel({this.data});

  ItmeModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? category;
  String? name;
  String? image;
  String? description;
  String? author;
  String? authorImage;
  double? calory;
  double? time;
  double? rating;
  List<Nutritions>? nutritions;
  String? indgredians;
  String? fullDescription;

  Data(
      {this.category,
        this.name,
        this.image,
        this.description,
        this.author,
        this.authorImage,
        this.calory,
        this.time,
        this.rating,
        this.nutritions,
        this.indgredians,
        this.fullDescription});

  Data.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    author = json['author'];
    authorImage = json['author_image'];
    calory = json['calory'];
    time = json['time'];
    rating = json['rating'];
    if (json['nutritions'] != null) {
      nutritions = <Nutritions>[];
      json['nutritions'].forEach((v) {
        nutritions!.add(new Nutritions.fromJson(v));
      });
    }
    indgredians = json['indgredians'];
    fullDescription = json['full_description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['author'] = this.author;
    data['author_image'] = this.authorImage;
    data['calory'] = this.calory;
    data['time'] = this.time;
    data['rating'] = this.rating;
    if (this.nutritions != null) {
      data['nutritions'] = this.nutritions!.map((v) => v.toJson()).toList();
    }
    data['indgredians'] = this.indgredians;
    data['full_description'] = this.fullDescription;
    return data;
  }
}

class Nutritions {
  String? name;
  double? amount;
  String? color;

  Nutritions({this.name, this.amount, this.color});

  Nutritions.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    amount = json['amount'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['amount'] = this.amount;
    data['color'] = this.color;
    return data;
  }
}


