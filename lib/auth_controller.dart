
import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/eight_screen/eight_screen.dart';
import 'package:faz/presentation/four_screen/four_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController{
  //AuthController.instance....
   static AuthController instance = Get.find();
   //email,password,name...
   late Rx<User?>_user;
   // late  bool Rate;
   FirebaseAuth _auth = FirebaseAuth.instance;
   var verificationId = "".obs;

   @override
   void onReady(){
      super.onReady();
      _user =  Rx<User?>(_auth.currentUser);
      //our user would be notified
      _user.bindStream(_auth.userChanges());
      // ever(listener, (callback) => null)
      ever(_user, _initialScreen);
   }
   
   
   _initialScreen(User? user){
      if(user==null){
         print("login page");
         Get.offNamed(
            AppRoutes.fourScreen,
         );
      }else{
         Get.offNamed(
            AppRoutes.eightScreen,
         );
      }
   }


   Future<void> register(String email,password) async {
      // firebase helper fumction
      try {
      await   _auth.createUserWithEmailAndPassword(email: email, password: password);
      }
      catch (e) {
          Get.snackbar("About User", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
             titleText: Text("Account creation failed",
             style: TextStyle(color: Colors.white),
             ),
             messageText: Text(e.toString(),style: TextStyle(color: Colors.white),)
          );
      }
   }

   Future<void> phoneAuthentication(String phoneNo)
   async{
      await _auth.verifyPhoneNumber(verificationCompleted: (credentials){
      },
          verificationFailed: (e){
         if(e.code == 'invalid-phone-number'){
            Get.snackbar("Error", 'The provided phone number is not valid');
         }else{
            Get.snackbar("Error", "Something went wrong,Try agaim");
         }
          },
          codeSent: (verificationId, resendToken){
         this.verificationId.value = verificationId;
          },
          codeAutoRetrievalTimeout: (verificationId){
             this.verificationId.value = verificationId;
          },
      );
}
 Future<bool> verifyOTP(String otp) async{
      var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
      return credentials.user != null ? true : false ;
 }
}