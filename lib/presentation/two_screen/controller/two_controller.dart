import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/four_screen/four_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
/// A controller class for the TwoScreen.
///
/// This class manages the state of the TwoScreen, including the
/// current twoModelObj
class TwoController extends GetxController {
   TextEditingController phoneNumberController = TextEditingController();
   TextEditingController _codecontroller = TextEditingController();
   // String phoneNumber = "";
       // data = "";
   // final FirebaseAuth _auth = FirebaseAuth.instance;
   // String smscode = "";
  //
  // Rx<TwoModel> twoModelObj = TwoModel().obs;
  //
  // Rx<Country> selectedCountry =
  //     CountryPickerUtils.getCountryByPhoneCode('91').obs;
  late TextEditingController code_controller ;
  // Rx<String> phoneNumber = "".obs, data = "".obs;
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // Rx<String> smscode = "".obs;

   Rx<int> value = 1.obs;
   var status_string = "Welcome".obs;
   String phoneNumber = "", data = "";
   final FirebaseAuth _auth = FirebaseAuth.instance;
   String smscode = "";
   var code_set = "no".obs;
   var verification_id = "1".obs;

   String get result => status_string.value;
   String get code_sent_result => code_set.value;
   String get verify_result => verification_id.value;
   // another method of calling parameters
   // _signinPN({

   // required String myphonenumber,
   // required FirebaseAuth mAuth,
   // }
   // )


   signinphonenumber({
     required phoneNumber ,
}) async {
     await _auth.verifyPhoneNumber(
         phoneNumber: phoneNumber,
         verificationCompleted: (PhoneAuthCredential authCredential) async {
           await _auth.signInWithCredential(authCredential).then((value) {
             // Navigator.push(
             //     context, MaterialPageRoute(builder: (context) => ThreeScreen()));
           });
         },
         verificationFailed: (FirebaseAuthException exception) {
           status_string.value = "Error verrifying your phone number";
           // print(error);
         },
         codeSent: (String verificationId, [int? forceResendingToken]) {
           print("sent");
           code_set.value = "yes";
           verification_id.value = verificationId;
         },
         codeAutoRetrievalTimeout: (String verificationId) {
           verificationId = verificationId;
         },
         timeout: Duration(seconds: 45)
     );
   }

   myCredentials({required String verID, required String userInput}) {
     AuthCredential authCredential = PhoneAuthProvider.credential(
         verificationId: verID, smsCode: userInput);
     _auth.signInWithCredential(authCredential).then((UserCredential) {
       // If success four page
       Get.to(FourScreen());
     }).catchError((e){
       print("Error Message ${e}");
     });
   }
  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
  // @override
  // void onInit() {
  // Get.offNamed(
  //     AppRoutes.eightScreen,
  //
  //   );}
  @override
  void onReady() {
  //   Get.lazyPut(
  //     AppRoutes.eightScreen as InstanceBuilderCallback,
  //
  //   );

    Get.offNamed(
      AppRoutes.eightScreen,

    );
    Get.offNamed(
      AppRoutes.fourScreen,
    );
  }
  @override
  void onInit() {
    // super.onInit();
    Get.offNamed(
      AppRoutes.twoScreen,
    );
  }
}
  // @override
// void



