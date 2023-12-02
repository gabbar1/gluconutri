import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:gluconutri/utils/loader.dart';
import 'package:gluconutri/utils/navigation.dart';
import 'package:gluconutri/view/dashboard_page/dashboard_navigator/dashboard_navigator.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController{


  loginWithEmail(String emailAddress,password)async{

    try {
      showLoader();
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
      closeLoader();
    } on FirebaseAuthException catch (e) {
      print("========================");
      print(e.code.toString());
      closeLoader();
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        Get.snackbar("Alert", "No user found for that email");
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Alert", "Wrong password provided for that user.");
        print('Wrong password provided for that user.');
      }else {
        Get.snackbar("Alert", e.code);
      }
    }
  }


  signInWithGoogle() async {
    // Trigger the authentication flow
    try{
      showLoader();
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
          scopes: [
            'email',
          ]
      ).signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final googleCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      if(googleCredential.additionalUserInfo!.isNewUser){
        insertUserData(googleUser!.displayName!,googleUser?.email,"");
      }
      closeLoader();
    }catch(e){
      closeLoader();
      throw e;
    }


  }



  registerWithEmail(String emailAddress,password,String name,String dob)async{

    try {
      showLoader();
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      print("========credential========");
      print(credential.toString());
      if(credential.additionalUserInfo?.isNewUser == true){
        print("==========insert======");
        insertUserData(name, emailAddress, dob );
      }
      closeLoader();
      CustomNavigation.pushAndRemoveUntil(HomeNavigator());

    } on FirebaseAuthException catch (e) {
      closeLoader();
      if (e.code == 'weak-password') {
        Get.snackbar("Alert", "The password provided is too weak.");
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("Alert", "The account already exists for that email.");
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  insertUserData(String name,email,dob){
    try{
      FirebaseFirestore.instance.collection("user_details").doc(FirebaseAuth.instance.currentUser?.uid).set(
          {
            "name": name,
            "email":email,
            "dob":dob,

      });
    }catch(e){
      throw e;
    }
  }


}