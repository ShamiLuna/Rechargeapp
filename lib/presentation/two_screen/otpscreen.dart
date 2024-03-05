//
// import 'package:faz/core/app_export.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_view.dart';
// import '../../theme/custom_text_style.dart';
// import '../../theme/theme_helper.dart';
// import '../../widgets/custom_elevated_button.dart';
// import '../otp/Logincontroller.dart';
// import 'controller/two_controller.dart';
//
// class TwoScreen extends GetWidget<TwoController> {
//   TwoScreen({Key? key}) : super(key: key);
//   var status_string = "Welcome".obs;
//   String phoneNumber = "",
//       data = "";
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   String smscode = "";
//   var code_set = "no".obs;
//   var verification_id = "1".obs;
//
//   String get result => status_string.value;
//   String get code_sent_result => code_set.value;
//
//   // another method of calling parameters
//   // _signinPN({
//
//   // required String myphonenumber,
//   // required FirebaseAuth mAuth,
//   // }
//   // )
//   _signinphonenumber() async {
//     await _auth.verifyPhoneNumber(
//         phoneNumber: phoneNumber,
//         verificationCompleted: (PhoneAuthCredential authCredential) async {
//           await _auth.signInWithCredential(authCredential).then((value) {
//             // Navigator.push(
//             //     context, MaterialPageRoute(builder: (context) => ThreeScreen()));
//           });
//         },
//         verificationFailed: (FirebaseAuthException exception) {
//           status_string.value = "Error verrifying your phone number";
//           // print(error);
//         },
//         codeSent: (String verificationId, [int? forceResendingToken]) {
//           code_set.value = "yes";
//           verification_id.value = verificationId;
//         },
//         codeAutoRetrievalTimeout: (String verificationId) {
//           verificationId = verificationId;
//         },
//         timeout: Duration(seconds: 45)
//     );
//   }
//
//   myCredentials({required String verID, required String userInput}) {
//     AuthCredential authCredential = PhoneAuthProvider.credential(
//         verificationId: verID, smsCode: userInput);
//     _auth.signInWithCredential(authCredential).then((UserCredential) {
//      // If success four page
//     }).catchError((e){
//       print("Error Message ${e}");
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SizedBox(
//           height: 893,
//           width: 395,
//           child: Column(mainAxisSize: MainAxisSize.min, children: [
//             SizedBox(height: 10),
//             Expanded(
//                 child: SingleChildScrollView(
//                     child: Container(
//                         height: 810,
//                         width: double.maxFinite,
//                         margin: EdgeInsets.only(
//                             left: 10, right: 10, bottom: 10),
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 21, vertical: 19),
//                         child:
//                         Stack(alignment: Alignment.center, children: [
//                           Align(
//                               alignment: Alignment.center,
//                               child: Container(
//                                   height: 810,
//                                   width: 395,
//                                   decoration: BoxDecoration(
//                                       color: appTheme.gray90001,
//                                       borderRadius:
//                                       BorderRadius.circular(32)))),
//                           Align(
//                               alignment: Alignment.center,
//                               child: Padding(
//                                   padding: EdgeInsets.only(
//                                       left: 29, right: 24),
//                                   child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         Text("lbl_registration".tr,
//                                             style: CustomTextStyles
//                                                 .titleLargeRobotoPrimary),
//                                         SizedBox(height: 13),
//                                         Container(
//                                             width: 245,
//                                             margin: EdgeInsets.only(
//                                                 left: 16, right: 19),
//                                             child: Text(
//                                                 "msg_enter_your_mobile"
//                                                     .tr,
//                                                 maxLines: 2,
//                                                 overflow:
//                                                 TextOverflow.ellipsis,
//                                                 textAlign:
//                                                 TextAlign.center,
//                                                 style: CustomTextStyles
//                                                     .bodySmallRobotoWhiteA700Light_1)),
//                                         SizedBox(height: 29),
//                                         Container(
//                                             width: 118,
//                                             margin: EdgeInsets.symmetric(
//                                                 horizontal: 80),
//                                             padding: EdgeInsets.symmetric(
//                                                 horizontal: 6,
//                                                 vertical: 53),
//                                             decoration: BoxDecoration(
//                                                 image: DecorationImage(
//                                                     image: AssetImage(
//                                                         ImageConstant
//                                                             .imgGroup891),
//                                                     fit: BoxFit.cover)),
//                                             child: Column(
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment
//                                                     .start,
//                                                 mainAxisAlignment:
//                                                 MainAxisAlignment
//                                                     .center,
//                                                 children: [
//                                                   SizedBox(height: 2),
//                                                   Container(
//                                                       height:
//                                                       18,
//                                                       width: 18,
//                                                       decoration: BoxDecoration(
//                                                           color: theme
//                                                               .colorScheme
//                                                               .onError,
//                                                           borderRadius:
//                                                           BorderRadius
//                                                               .circular(
//                                                               9)))
//                                                 ])),
//                                         SizedBox(height: 30),
//                                         Align(
//                                             alignment:
//                                             Alignment.center,
//                                             child: GestureDetector(
//                                               onTap: (){
//                                                 // Get.snackbar("Snackbar Title1" , "Edhudan message",
//                                                 //     snackPosition: SnackPosition.BOTTOM,
//                                                 //     //
//                                                 //     // titleText: Text("Another but editable text"),
//                                                 //     // messageText: Text("Another ...",style: TextStyle(
//                                                 //     //   color: Colors.amber,height: 10,
//                                                 //     // ),),
//                                                 //     colorText: Colors.red,
//                                                 //     backgroundColor: Colors.black,
//                                                 //     borderRadius: 30,
//                                                 //     margin: EdgeInsets.all(10),
//                                                 //     // maxWidth: 100,
//                                                 //     // animationDuration: Duration(milliseconds: 3300),
//                                                 //     backgroundGradient: LinearGradient(
//                                                 //         colors: [Colors.transparent, Colors.white12],
//                                                 //     ),
//                                                 //   borderColor: Colors.amber,
//                                                 //   borderWidth: 4,
//                                                 //   boxShadows: [
//                                                 //     BoxShadow(
//                                                 //       color: Colors.black12,
//                                                 //       offset: Offset(30, 50),
//                                                 //       spreadRadius: 20,
//                                                 //       blurRadius: 5)
//                                                 //
//                                                 //   ],
//                                                 //   isDismissible: true,
//                                                 //   dismissDirection: DismissDirection.horizontal,
//                                                 //   forwardAnimationCurve: Curves.bounceInOut,
//                                                 //   duration: Duration(milliseconds: 5000),
//                                                 //   icon: Icon(
//                                                 //     Icons.send,
//                                                 //     color: Colors.black,
//                                                 //   ),
//                                                 //   // width podanu border color kooda
//                                                 // // shouldIconPulse: false,
//                                                 //   leftBarIndicatorColor: Colors.white,
//                                                 //   mainButton: TextButton(onPressed: (){
//                                                 //     print ("Retry");
//                                                 //   }, child: Text("Retry"),),
//                                                 //   onTap: (anthingvalokay){
//                                                 //   print("Snackbar clicked");
//                                                 //   },
//                                                 //   overlayBlur: 5,
//                                                 //   overlayColor: Colors.pink,
//                                                 //   padding: EdgeInsets.all(50),
//                                                 //   showProgressIndicator: true,
//                                                 //   progressIndicatorBackgroundColor: Colors.green,
//                                                 //   progressIndicatorValueColor:
//                                                 //     AlwaysStoppedAnimation<Color>(Colors.black),
//                                                 //   // reverseAnimationCurve: Curves.bounceInOut,
//                                                 //   snackbarStatus: (yedho){
//                                                 //   print(yedho);
//                                                 //   },
//                                                 //
//                                                 //   // userInputForm: Form(child: Row(
//                                                 //   //   children: [
//                                                 //   //     Expanded(child: TextField()),
//                                                 //   //   ],
//                                                 //   // ))
//                                                 //
//                                                 //
//                                                 //
//                                                 //
//                                                 // );
//
//
//                                                 //dialogboxpopup
//
//
//
//
//
//
//
//
//
//
//                                                 //  Get.defaultDialog(
//                                                 //    title: "Diaglog Title",
//                                                 //    titleStyle: TextStyle(fontSize: 25),
//                                                 //    middleText: "This is middle text",
//                                                 //    middleTextStyle: TextStyle(fontSize: 20),
//                                                 //    backgroundColor: Colors.blue,
//                                                 //    radius: 80,
//                                                 //      // to customize the middle text
//                                                 //    content: Row(
//                                                 //      children: [
//                                                 //        CircularProgressIndicator(),
//                                                 //        SizedBox(
//                                                 //          width: 20,
//                                                 //        ),
//                                                 //        Expanded(child: Text("Data Loading")),
//                                                 //      ],
//                                                 //    ),
//                                                 //    textCancel: "Cancel",
//                                                 //    cancelTextColor: Colors.white,
//                                                 //    textConfirm: "Confirm",
//                                                 //    confirmTextColor: Colors.blue,
//                                                 //    onCancel: (){},
//                                                 //    onConfirm: (){},
//                                                 //    buttonColor: Colors.green,
//                                                 //    cancel: Icon(Icons.abc),
//                                                 //    confirm: Icon(Icons.ac_unit),
//                                                 // //actions
//                                                 //    actions: [
//                                                 //      ElevatedButton(onPressed: (){
//                                                 //        Get.back();
//                                                 //      }, child: Text("Action1"),),
//                                                 //      ElevatedButton(onPressed: (){
//                                                 //        Get.back();
//                                                 //      }, child: Text("Action2"),),
//                                                 //    ],
//                                                 //    barrierDismissible: false,
//                                                 //
//                                                 //  );
//
//
//                                                 //bottomsheet
//
//                                                 // Get.bottomSheet(Container(
//                                                 //   height: 430,
//                                                 //   width: 400,
//                                                 //   child: Wrap(
//                                                 //     children: <Widget>[
//                                                 //       NumericPad(
//                                                 //         onNumberSelected: (value) {
//                                                 //           setState(() {
//                                                 //             if (value != -1) {
//                                                 //               phoneNumber = phoneNumber + value.toString();
//                                                 //             } else {
//                                                 //               phoneNumber =
//                                                 //                   phoneNumber.substring(0, phoneNumber.length - 1);
//                                                 //             }
//                                                 //           });
//                                                 //         },
//                                                 //       ),
//                                                 //     ],
//                                                 //   ),
//                                                 // ),
//                                                 //   // barrierColor: Colors.blue,
//                                                 //   backgroundColor: Colors.purple,
//                                                 //   isDismissible: true,
//                                                 //   shape: RoundedRectangleBorder(
//                                                 //     borderRadius: BorderRadius.circular(10.0),
//                                                 //     side: BorderSide(
//                                                 //         color: Colors.white,
//                                                 //         style: BorderStyle.solid,
//                                                 //         width: 2.0
//                                                 //     ),
//                                                 //   ),
//                                                 //   enableDrag: true,
//                                                 // );
//                                               },
//                                               // NumericPad(
//                                               //   onNumberSelected: (value) {
//                                               //     setState(() {
//                                               //       if (value != -1) {
//                                               //         phoneNumber = phoneNumber + value.toString();
//                                               //       } else {
//                                               //         phoneNumber =
//                                               //             phoneNumber.substring(0, phoneNumber.length - 1);
//                                               //       }
//                                               //     });
//                                               //   },
//                                               // );
//                                               child: Container(
//                                                 decoration: BoxDecoration(
//                                                   // border: Border.all(),
//                                                   borderRadius: BorderRadius.circular(10),
//                                                   color: Colors.black38,
//                                                   // color: Colors.pule.shade400,
//                                                 ),
//                                                 height: 60,
//                                                 width: 400,
//                                                 child: Row(
//                                                   children: [
//                                                     // ElevatedButton(onPressed: (){
//                                                     // }, child: Text(selectedCountry.isoCode)),
//                                                     SizedBox(width: 8,),
//                                                     Text("+91",style: TextStyle(
//                                                         fontSize: 20
//                                                     ),),
//                                                     SizedBox(width: 8),
//                                                     TextFormField(
//                                                         controller: controller.phoneNumberController,
//                                                         style: CustomTextStyles
//                                                         .bodySmallRobotoWhiteA700_1),
//                                                     SizedBox(width: 8),
//                                                     Obx((){
//                                                       return controller.code_sent_result == "yes"?Column(
//                                                         children: [
//                                                           Container(
//                                                             child: TextFormField(
//                                                               controller: controller.phoneNumberController2,
//                                                               keyboardType: TextInputType.phone,
//                                                               decoration: InputDecoration(
//                                                                 helperText: "Type verification code",
//                                                                 border: OutlineInputBorder(
//                                                                 )
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           ElevatedButton(onPressed: (){
//                                                             String userInput = controller.phoneNumberController2.text;
//                                                             print(controller.verify_result);
//                                                             controller.myCredentials(verID: controller.verify_result, userInput: userInput);
//                                                           }, child: Text("Submit code")),
//                                                         ],
//                                                       ):Text("Waiting to verify your phone Number");
//                                                     }),
//                                                   ],
//                                                 ),
//                                               ),
//                                             )),
//                                         // GestureDetector(
//                                         //
//                                         //   child: Container(
//                                         //
//                                         //     height: 60,
//                                         //     width: 400,
//                                         //     decoration: BoxDecoration(
//                                         //       color: Colors.white,
//                                         //     ),
//                                         //
//                                         //     child: Text(
//                                         //       phoneNumber,style: TextStyle(color: Colors.purple),
//                                         //
//                                         //     ),
//                                         //   ),
//                                         // ),
//                                         // Obx(() => Text(
//                                         //   phoneNumber,
//                                         //   // country: controller
//                                         //   //     .selectedCountry.value,
//                                         //   // controller: controller
//                                         //   //     .phoneNumberController,
//                                         //   // onTap: (Country value) {
//                                         //   //   controller.selectedCountry
//                                         //   //       .value = value
//                                         //   //   ;
//                                         //   // }
//                                         // ),
//                                         // ),
//                                         SizedBox(height: 30),
//                                         // CustomElevatedButton(
//                                         //
//                                         //     text: "lbl_send_via_sms"
//                                         //         .tr
//                                         //         .toUpperCase(),
//                                         //     buttonTextStyle:
//                                         //     CustomTextStyles
//                                         //         .titleSmallRoboto,
//                                         //     onPressed: () {
//                                         //       data = phoneNumber;
//                                         //       phoneNumber = "";
//                                         //
//                                         //       setState(() {});
//                                         //
//                                         //       _signInWithMobileNumber();
//                                         //     }),
//                                         Center(
//                                           child: ElevatedButton(
//                                             // decoration: BoxDecoration(
//                                             //   color: Colors.purple,
//                                             // // ),
//                                             // key:
//                                             //     "lbl_get_started".tr.toUpperCase(),
//
//                                             // buttonTextStyle:
//                                             //     CustomTextStyles.titleSmallRoboto_1,
//                                             // onPressed: () {
//                                             //   navitoregis();
//                                             // },
//                                             // alignment: Alignment.center,
//                                             child: Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 20,
//                                                   top: 12,
//                                                   bottom: 12,
//                                                   right: 20),
//                                               child: Text(
//                                                 "Send via Sms",
//                                                 style: TextStyle(fontSize: 21),
//                                               ),
//                                             ),
//                                             style: ElevatedButton.styleFrom(
//                                                 backgroundColor: Colors.purple,
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius:
//                                                   BorderRadius.circular(8),
//                                                 )), onPressed: () async{
//                                               print("");
//                                            await controller.signinphonenumber(phoneNumber: controller.code_controller.text);
//                                             // setState(() {
//                                             //   _validate = _codecontroller.text.isEmpty;
//                                             // });
//                                           },
//                                           ),
//                                         ),
//                                         SizedBox(height: 16),
//                                         Center(
//                                           child: ElevatedButton(
//                                             // decoration: BoxDecoration(
//                                             //   color: Colors.purple,
//                                             // // ),
//                                             // key:
//                                             //     "lbl_get_started".tr.toUpperCase(),
//
//                                             // buttonTextStyle:
//                                             //     CustomTextStyles.titleSmallRoboto_1,
//                                             // onPressed: () {
//                                             //   navitoregis();
//                                             // },
//                                             // alignment: Alignment.center,
//                                             child: Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 15,
//                                                   top: 12,
//                                                   bottom: 12,
//                                                   right: 15),
//                                               child: Text(
//                                                 "Send via Email",
//                                                 style: TextStyle(fontSize: 21),
//                                               ),
//                                             ),
//                                             style: ElevatedButton.styleFrom(
//                                                 backgroundColor: Colors.purple,
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius:
//                                                   BorderRadius.circular(8),
//                                                 )), onPressed: () {
//
//                                             Navigator.push(
//                                               context,
//                                               MaterialPageRoute(builder: (context) =>  navito()),
//                                             );
//                                           },
//                                           ),
//                                         ),
//                                         SizedBox(height: 71),
//                                         Container(
//                                             width: 227,
//                                             margin: EdgeInsets.only(
//                                                 left: 22, right: 30),
//                                             child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       text:
//                                                       "msg_by_creating_and_or2"
//                                                           .tr,
//                                                       style: CustomTextStyles
//                                                           .bodySmallffffffff11),
//                                                   TextSpan(
//                                                       text:
//                                                       "msg_terms_conditions2"
//                                                           .tr,
//                                                       style: theme
//                                                           .textTheme
//                                                           .labelMedium),
//                                                   TextSpan(
//                                                       text: "lbl4".tr,
//                                                       style: CustomTextStyles
//                                                           .bodySmallffa456f6)
//                                                 ]),
//                                                 textAlign:
//                                                 TextAlign.center)),
//                                       ])))
//                         ]))))
//           ])
//       ),
//     );
//   }
//
//
//   /// Navigates to the threeScreen when the action is triggered.
//   navitiotp() {
//     Get.offNamed(
//       AppRoutes.threeScreen,
//     );
//   }
//
//   eight() {
//     Get.offNamed(AppRoutes.fourScreen);
//   }
//
//    navito() {
//     Get.offNamed(AppRoutes.fourScreen);
//   }
// }
