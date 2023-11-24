import 'package:cloud_firestore/cloud_firestore.dart';

class TrackingModel {
  Timestamp? date;
  double? carbohydrates;
  String? image;
  double? protein;
  double? fat;
  String? name;
  String? user;
  String? key;
  double? cal;

  TrackingModel(
      {this.date,
        this.carbohydrates,
        this.image,
        this.protein,
        this.fat,
        this.name,
        this.user,
        this.cal,
        this.key
      });

  TrackingModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    carbohydrates = json['carbohydrates'];
    image = json['image'];
    protein = json['protein'];
    fat = json['fat'];
    name = json['name'];
    user = json['user'];
    cal = json['cal'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['carbohydrates'] = this.carbohydrates;
    data['image'] = this.image;
    data['protein'] = this.protein;
    data['fat'] = this.fat;
    data['name'] = this.name;
    data['user'] = this.user;
    data['cal'] = this.cal;
    data['key'] = this.key;
    return data;
  }
}
