class UserDetailsModel {
  String? name;
  String? dob;
  String? email;
  String? profile;

  UserDetailsModel({this.name, this.dob, this.email,this.profile});

  UserDetailsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dob = json['dob'];
    email = json['email'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dob'] = this.dob;
    data['email'] = this.email;
    data['profile'] = this.profile;
    return data;
  }
}
