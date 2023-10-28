class TopDietitianModel {
  String? name;
  String? designation;
  String? image;

  TopDietitianModel({this.name, this.designation, this.image});

  TopDietitianModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    designation = json['designation'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['designation'] = this.designation;
    data['image'] = this.image;
    return data;
  }
}
