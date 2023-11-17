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


