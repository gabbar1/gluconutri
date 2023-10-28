import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:gluconutri/view/gluco_nutri_page/model/top_dietitian_model.dart';

class DietitianController extends GetxController{

  var topDietitianList = <TopDietitianModel>[].obs;
  List<TopDietitianModel> get getTopDietitianList=> topDietitianList.value;
  set setTopDietitianList(TopDietitianModel val){
    topDietitianList.value.add(val);
    topDietitianList.refresh();
  }
  fetchTopDietitians(){
    try{
      FirebaseFirestore.instance.collection("top_dietitians").get().then((value) {
        if(value.size !=0){
          value.docs.forEach((element) {
            TopDietitianModel topDietitianModel = TopDietitianModel.fromJson(element.data());
            setTopDietitianList = topDietitianModel;
          });

        }
      });
    }catch(e){
      throw e;
    }
  }

  var recommendedDietitianList = <TopDietitianModel>[].obs;
  List<TopDietitianModel> get getRecommendedList=> topDietitianList.value;
  set setRecommendedList(TopDietitianModel val){
    recommendedDietitianList.value.add(val);
    recommendedDietitianList.refresh();
  }
  fetchRecommendedDietitians(){
    try{
      FirebaseFirestore.instance.collection("recommended_dietitians").get().then((value) {
        if(value.size !=0){
          value.docs.forEach((element) {
            TopDietitianModel topDietitianModel = TopDietitianModel.fromJson(element.data());
            setRecommendedList = topDietitianModel;
          });

        }
      });
    }catch(e){
      throw e;
    }
  }
}