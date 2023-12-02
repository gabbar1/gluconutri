

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:gluconutri/utils/loader.dart';
import 'package:gluconutri/utils/navigation.dart';
import 'package:gluconutri/view/nutri_discovery_page/model/tracking_model.dart';

class AddCalory extends GetxController{

  var isAdd = false.obs;
  bool get getIsAdd => isAdd.value;
  set setIsAdd(bool val){
    isAdd.value = val;
    isAdd.refresh();
  }


 

  addTracking({required num carbohydrates, required num fat,required num protein, required num cal,required String name,required String image}){
    try{
      showLoader();
      FirebaseFirestore.instance.collection("tracking").add({
        "date":Timestamp.now(),
        "carbohydrates":carbohydrates,
        "fat":fat,
        "protein":protein,
        "cal":cal,
        "user":FirebaseAuth.instance.currentUser!.uid,
        "name":name,
        "image":image
      }).then((value) {
        closeLoader();
        getTracking();
      CustomNavigation.pop();
      CustomNavigation.pop();
      CustomNavigation.pop();
      }).onError((error, stackTrace) => closeLoader());
      
    }catch(e){
      closeLoader();
      throw e;
    }
  }

   var trackingList = <TrackingModel>[].obs;
   List<TrackingModel> get getTrackingList => trackingList.value;
  DateTime now = DateTime.now();
  var currentSelectedDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).obs;
  DateTime get getCurrentSelectedDate =>currentSelectedDate.value;
  set setCurrentSelectedDate(DateTime val){
    currentSelectedDate.value = val;
    currentSelectedDate.refresh();
  }
  Map<String,dynamic>? data ;
  var combinedData = <String,double>{}.obs;
  Map<String, double> get getCombinedData => combinedData.value;
  var totalCal = 0.0.obs;
  double get getTotalCal => totalCal.value;
  getTracking(){
    trackingList.clear();

    // Convert currentDate to a Firestore Timestamp
    Timestamp startOfDay = Timestamp.fromDate(getCurrentSelectedDate);

    try{

      FirebaseFirestore.instance.collection("tracking").where("user",isEqualTo: FirebaseAuth.instance.currentUser!.uid)..where('date', isGreaterThanOrEqualTo: startOfDay)
          .where('date', isLessThan: startOfDay.toDate().add(Duration(days: 1))).get().then((value) {
        print("==================Size=============");
        print(value.size);
        if(value.size!=0){
          value.docs.forEach((element) {
            TrackingModel model = TrackingModel.fromJson(element.data());
            model.key = element.id;
            trackingList.value.add(model);
            trackingList.refresh();
          });
        }
      }).then((value) {
        totalCal.value = 0.0;
        for (var trackingItem in getTrackingList) {
          // For each TrackingModel object, extract its data and accumulate values
          combinedData.value.update('Carbohydrates', (value) => (value + trackingItem.carbohydrates!) ?? trackingItem.carbohydrates!,
              ifAbsent: () => trackingItem.carbohydrates ?? 0);
          combinedData.value.update('Protein', (value) => (value + trackingItem.protein!) ?? trackingItem.protein!,
              ifAbsent: () => trackingItem.protein ?? 0);
          combinedData.value.update('Fat', (value) => (value + trackingItem.fat!) ?? trackingItem.fat!,
              ifAbsent: () => trackingItem.fat ?? 0);
          print("===========================Mapppp=");
          print(combinedData.toString());
          combinedData.refresh();
          totalCal.value +=  trackingItem.cal!;
          totalCal.refresh();
          // Add more keys as needed
        }
      });



    }catch(e){
      throw e;
    }
  }

}