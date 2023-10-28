import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:gluconutri/ui/home/model/user_model.dart';

class HomeController extends GetxController{


  var userDetails = UserDetailsModel().obs;
  UserDetailsModel get getUserDetails => userDetails.value;
  set setUserDetails(UserDetailsModel val){
    userDetails.value =val;
    userDetails.refresh();
  }
  fetchMyDetail(){
    try{
      FirebaseFirestore.instance.collection("user_details").doc(FirebaseAuth.instance.currentUser!.uid).get().then((value) {
        if(value.exists){
          UserDetailsModel userDetailsModel = UserDetailsModel.fromJson(value.data()!);
          setUserDetails = userDetailsModel;
        }
      });
    }catch(e){
      throw e;
    }
  }



}