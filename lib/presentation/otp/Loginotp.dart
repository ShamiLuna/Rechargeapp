//
// import 'package:country_pickers/country.dart';
// import 'package:country_pickers/utils/utils.dart';
// import 'package:faz/presentation/four_screen/four_screen.dart';
// import 'package:faz/presentation/otp/Logincontroller.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// import 'package:faz/core/app_export.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Logins extends StatelessWidget {
//   // const Login({super.key});
//   final SignUPController controller = Get.put(SignUPController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SizedBox(
//         height: 893,
//           width: 395,
//           child: Column(mainAxisSize: MainAxisSize.min, children: [
//             SizedBox(height: 10),
//             Expanded(
//                 child: Stack(alignment: Alignment.center, children: [
//                   Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                           height: 810,
//                           width: 395,
//                           decoration: BoxDecoration(
//                               color: appTheme.gray90001,
//                               borderRadius:
//                               BorderRadius.circular(32)))),
//                   Align(
//                       alignment: Alignment.center,
//                       child: Padding(
//                           padding: EdgeInsets.only(
//                               left: 29, right: 24),
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text("lbl_registration".tr,
//                                     style: CustomTextStyles
//                                         .titleLargeRobotoPrimary),
//                                 SizedBox(height: 13),
//                                 Container(
//                                     width: 245,
//                                     margin: EdgeInsets.only(
//                                         left: 16, right: 19),
//                                     child: Text(
//                                         "msg_enter_your_mobile"
//                                             .tr,
//                                         maxLines: 2,
//                                         overflow:
//                                         TextOverflow.ellipsis,
//                                         textAlign:
//                                         TextAlign.center,
//                                         style: CustomTextStyles
//                                             .bodySmallRobotoWhiteA700Light_1)),
//                                 SizedBox(height: 29),
//                                 Container(
//                                     width: 118,
//                                     margin: EdgeInsets.symmetric(
//                                         horizontal: 80),
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 6,
//                                         vertical: 53),
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                             image: AssetImage(
//                                                 ImageConstant
//                                                     .imgGroup891),
//                                             fit: BoxFit.cover)),
//                                     child: Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment
//                                             .start,
//                                         mainAxisAlignment:
//                                         MainAxisAlignment
//                                             .center,
//                                         children: [
//                                           SizedBox(height: 2),
//                                           Container(
//                                               height:
//                                               18,
//                                               width: 18,
//                                               decoration: BoxDecoration(
//                                                   color: theme
//                                                       .colorScheme
//                                                       .onError,
//                                                   borderRadius:
//                                                   BorderRadius
//                                                       .circular(
//                                                       9)))
//                                         ])),
//                                 SizedBox(height: 30),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     // border: Border.all(),
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: Colors.black38,
//                                     // color: Colors.pule.shade400,
//                                   ),
//                                   height: 60,
//                                   width: 400,
//                                   child: Row(
//                                     children: [
//                                       // ElevatedButton(onPressed: (){
//                                       // }, child: Text(selectedCountry.isoCode)),
//                                       SizedBox(width: 8,),
//                                       // Text("+91",style: TextStyle(
//                                       //     fontSize: 20
//                                       // ),),
//                                       SizedBox(width: 8),
//                                       TextFormField(
//                                         controller: controller.phoneNo,
//                                         keyboardType: TextInputType.phone,
//                                         decoration: InputDecoration(
//                                           hintText: "Input Phone Number",
//                                           border: OutlineInputBorder()
//                                         ),
//                                       ),
//                                       // Text(
//                                       //     "",
//                                       //     // style: CustomTextStyles
//                                       //     //     .bodySmallRobotoWhiteA700_1
//                                       //     //
//                                       // ),
//                                       SizedBox(width: 8,)
//                                     ],
//                                   ),
//                                 ),
//                                 // GestureDetector(
//                                 //
//                                 //   child: Container(
//                                 //
//                                 //     height: 60,
//                                 //     width: 400,
//                                 //     decoration: BoxDecoration(
//                                 //       color: Colors.white,
//                                 //     ),
//                                 //
//                                 //     child: Text(
//                                 //       phoneNumber,style: TextStyle(color: Colors.purple),
//                                 //
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 // Obx(() => Text(
//                                 //   phoneNumber,
//                                 //   // country: controller
//                                 //   //     .selectedCountry.value,
//                                 //   // controller: controller
//                                 //   //     .phoneNumberController,
//                                 //   // onTap: (Country value) {
//                                 //   //   controller.selectedCountry
//                                 //   //       .value = value
//                                 //   //   ;
//                                 //   // }
//                                 // ),
//                                 // ),
//                                 SizedBox(height: 30),
//                                 // CustomElevatedButton(
//                                 //
//                                 //     text: "lbl_send_via_sms"
//                                 //         .tr
//                                 //         .toUpperCase(),
//                                 //     buttonTextStyle:
//                                 //     CustomTextStyles
//                                 //         .titleSmallRoboto,
//                                 //     onPressed: () {
//                                 //       data = phoneNumber;
//                                 //       phoneNumber = "";
//                                 //
//                                 //       setState(() {});
//                                 //
//                                 //       _signInWithMobileNumber();
//                                 //     }),
//                                 Center(
//                                   child: ElevatedButton(
//                                     // decoration: BoxDecoration(
//                                     //   color: Colors.purple,
//                                     // // ),
//                                     // key:
//                                     //     "lbl_get_started".tr.toUpperCase(),
//
//                                     // buttonTextStyle:
//                                     //     CustomTextStyles.titleSmallRoboto_1,
//                                     // onPressed: () {
//                                     //   navitoregis();
//                                     // },
//                                     // alignment: Alignment.center,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 20,
//                                           top: 12,
//                                           bottom: 12,
//                                           right: 20),
//                                       child: Text(
//                                         "Send via Sms",
//                                         style: TextStyle(fontSize: 21),
//                                       ),
//                                     ),
//                                     style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.purple,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                           BorderRadius.circular(8),
//                                         )), onPressed: () async{
//                                     // data = phoneNumber;
//                                     // phoneNumber = "";
//                                     // setState(() {});{
//                                      print("The pn is ${controller.phoneNo.text}");
//                                      // (phoneNumber: controller..text);
//
//
//                                     // setState(() {
//                                     //   _validate = _codecontroller.text.isEmpty;
//                                     // });
//                                   },
//                                   ),
//                                 ),
//                                 SizedBox(height: 16),
//                                 Center(
//                                   child: ElevatedButton(
//                                     // decoration: BoxDecoration(
//                                     //   color: Colors.purple,
//                                     // // ),
//                                     // key:
//                                     //     "lbl_get_started".tr.toUpperCase(),
//
//                                     // buttonTextStyle:
//                                     //     CustomTextStyles.titleSmallRoboto_1,
//                                     // onPressed: () {
//                                     //   navitoregis();
//                                     // },
//                                     // alignment: Alignment.center,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 15,
//                                           top: 12,
//                                           bottom: 12,
//                                           right: 15),
//                                       child: Text(
//                                         "Send via Email",
//                                         style: TextStyle(fontSize: 21),
//                                       ),
//                                     ),
//                                     style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.purple,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                           BorderRadius.circular(8),
//                                         )), onPressed: () {
//                                            // Get.to(FourScreen()
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(builder: (context) =>  navito()
//                                       ),
//                                     );
//                                   },
//                                   ),
//                                 ),
//                                 SizedBox(height: 71),
//                                 Container(
//                                     width: 227,
//                                     margin: EdgeInsets.only(
//                                         left: 22, right: 30),
//                                     child: RichText(
//                                         text: TextSpan(children: [
//                                           TextSpan(
//                                               text:
//                                               "msg_by_creating_and_or2"
//                                                   .tr,
//                                               style: CustomTextStyles
//                                                   .bodySmallffffffff11),
//                                           TextSpan(
//                                               text:
//                                               "msg_terms_conditions2"
//                                                   .tr,
//                                               style: theme
//                                                   .textTheme
//                                                   .labelMedium),
//                                           TextSpan(
//                                               text: "lbl4".tr,
//                                               style: CustomTextStyles
//                                                   .bodySmallffa456f6)
//                                         ]),
//                                         textAlign:
//                                         TextAlign.center)),
//                               ])))
//                 ]))
//           ])
//       ),
//     );
//   }
//
//   eight() {
//     Get.offNamed(AppRoutes.fourScreen);
//   }
//   navito() {
//     Get.offNamed(AppRoutes.fourScreen);
//   }
// // @override
// // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
// //   super.debugFillProperties(properties);
// //   properties.add(DiagnosticsProperty<bool>('_validate', _validate));
// // }
// }




import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:faz/presentation/four_screen/four_screen.dart';
import 'package:faz/presentation/otp/Logincontroller.dart';
import 'package:faz/presentation/two_screen/controller/two_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:faz/core/app_export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../three_screen/three_screen.dart';


class Logins extends StatelessWidget {
  // const Login({super.key});
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SignUPController controller = Get.put(SignUPController());


  // @override
  // State<Login> createState() => _LoginState();

  // @override
  // Widget build(BuildContext context) {
  //
  // late BuildContext context;
  // String phoneNumber = "",
  //     data = "";
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // String smscode = "";
  // bool _validate = false;
  // String? get _errorText {
  //   // at any time, we can get the text from _controller.value.text
  //   final text = _codecontroller.value.text;
  //   // Note: you can do your own custom validation here
  //   // Move this logic this outside the widget for more testable code
  //   if (text.isEmpty) {
  //     return 'Can\'t be empty';
  //   }
  //   if (text.length < 4) {
  //     return 'Too short';
  //   }
  //   // return null if the text is valid
  //   return null;
  // }
  // bool _submitted = false;
  // void _submit() {
  //   setState(() => _submitted = true);
  //   if (_errorText == null) {
  //     widget.onSubmit(_codecontroller.value.text);
  //   }
  // }
  // signInWithMobileNumber() async {
  //   // UserCredential _credential;
  //   // User user;
  //   // Fail phoneverify;
  //   try {
  //     await _auth.verifyPhoneNumber(
  //         phoneNumber: '+91' + data.trim(),
  //         verificationCompleted: (PhoneAuthCredential authCredential) async {
  //           await _auth.signInWithCredential(authCredential).then((value) {
  //             // Navigator.push(
  //             //     context, MaterialPageRoute(builder: (context) => ThreeScreen()));
  //           });
  //         },
  //         verificationFailed: ((error) {
  //           print(error);
  //           showDialog(
  //             context: context,
  //             builder: (BuildContext context) {
  //               // set up the button
  //               Widget okButton = TextButton(
  //                 child: Text("OK"),
  //                 onPressed: () async {
  //                   await Future.delayed(const Duration(seconds: 1));
  //                   if (context.mounted) {
  //                     Navigator.of(context).pop();
  //                   }
  //                 },
  //               );
  //
  //               // set up the AlertDialog
  //               AlertDialog alert = AlertDialog(
  //                 title: Text("Invalid number"),
  //                 content: Text("Please enter a valid number."),
  //                 actions: [
  //                   okButton,
  //                 ],
  //               );
  //               // show the dialog
  //               return alert;
  //             },
  //           );
  //           // Text("Please Enter a valid phone number");
  //           // showDialog(context: context,
  //           //     // barrierLabel: (""),
  //           //     builder: (BuildContext context) {return Container(
  //           //       height: 200,
  //           //       child: OutlinedButton(
  //           //                     onPressed: () async {
  //           //       await Future .delayed(const Duration(seconds: 1));
  //           //       if (context.mounted) {
  //           //         Navigator.of(context).pop();
  //           //       }
  //           //                     },
  //           //                     child: const Text('Please enter a valid phone number'),
  //           //                   ),
  //           //     );}
  //           // );
  //
  //
  //           //  _errorText;
  //           //
  //           //
  //           // AlertDialog(
  //           //   title: Text(_errorText!),
  //           //   // Text(_errorText!)
  //           // );
  //         }),
  //         codeSent: (String verificationId, [int? forceResendingToken]) {
  //           showDialog(
  //               context: context,
  //               barrierDismissible: false,
  //               builder: (context) =>
  //                   AlertDialog(
  //                     title: Text("Enter OTP"),
  //                     content: Column(
  //                       mainAxisSize: MainAxisSize.min,
  //                       children: [
  //                         TextField(
  //                           controller: controller.code_controller,
  //                           // errorText: _errorText,
  //                           // validator:(str){}
  //                           // onChanged: (text) => setState(() => phoneNumber+_errorText!),
  //                         ),
  //                         // AlertDialog(
  //                         //   title: Text(_errorText!),
  //                         //     // Text(_errorText!)
  //                         // ),
  //                       ],
  //                     ),
  //                     actions: [
  //                       ElevatedButton(
  //                           onPressed: () {
  //                             FirebaseAuth auth = FirebaseAuth.instance;
  //                             smscode = smscode;
  //                             PhoneAuthCredential _credential =
  //                             PhoneAuthProvider.credential(
  //                                 verificationId: verificationId,
  //                                 smsCode: smscode);
  //                             auth
  //                                 .signInWithCredential(_credential)
  //                                 .then((result) {
  //                               Navigator.pop(context);
  //
  //                               // Navigator.push(
  //                               //     context,
  //                               //     MaterialPageRoute(
  //                               //         builder: (context) => const eight();
  //                             }).catchError((e) {
  //                               print(e);
  //                             });
  //                           },
  //                           child: Text("Done"))
  //                     ],
  //                   ));
  //         },
  //         codeAutoRetrievalTimeout: (String verificationId) {
  //           verificationId = verificationId;
  //         },
  //         timeout: Duration(seconds: 45));
  //   } catch (e) {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Form(
        key: _formKey,
        child: SizedBox(
          height: 1000,
          width: double.maxFinite,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(height: 10),
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        height: 1000,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        padding: EdgeInsets.symmetric(
                            horizontal: 21, vertical: 19),
                        child:
                        Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 950,
                                  width: 395,
                                  decoration: BoxDecoration(
                                      color: appTheme.gray90001,
                                      borderRadius:
                                      BorderRadius.circular(32)))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 29, right: 24),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("lbl_registration".tr,
                                            style: CustomTextStyles
                                                .titleLargeRobotoPrimary),
                                        SizedBox(height: 13),
                                        Container(
                                            width: 245,
                                            margin: EdgeInsets.only(
                                                left: 16, right: 19),
                                            child: Text(
                                                "msg_enter_your_mobile"
                                                    .tr,
                                                maxLines: 2,
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign:
                                                TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodySmallRobotoWhiteA700Light_1)),
                                        SizedBox(height: 29),
                                        Container(
                                            width: 118,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 80),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6,
                                                vertical: 53),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup891),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .center,
                                                children: [
                                                  SizedBox(height: 2),
                                                  Container(
                                                      height:
                                                      18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .onError,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              9)))
                                                ])),
                                        SizedBox(height: 30),
                                        // TextFormField(
                                        //
                                        // ),

                                  TextFormField(
                                      keyboardType: TextInputType.phone,
                                      controller: controller.phoneNo,
                                      decoration: InputDecoration(
                                        labelText: "Phone Number",
                                        border: OutlineInputBorder(),
                                        // prefixIcon: Icon(Icons.add),
                                      )
                                  ),
                                        //  old ui
                                        // Align(
                                        //     alignment:
                                        //     Alignment.center,
                                        //     child:
                                        //     GestureDetector(
                                        //       onTap: () {
                                        //         // Get.snackbar("Snackbar Title1" , "Edhudan message",
                                        //         //     snackPosition: SnackPosition.BOTTOM,
                                        //         //     //
                                        //         //     // titleText: Text("Another but editable text"),
                                        //         //     // messageText: Text("Another ...",style: TextStyle(
                                        //         //     //   color: Colors.amber,height: 10,
                                        //         //     // ),),
                                        //         //     colorText: Colors.red,
                                        //         //     backgroundColor: Colors.black,
                                        //         //     borderRadius: 30,
                                        //         //     margin: EdgeInsets.all(10),
                                        //         //     // maxWidth: 100,
                                        //         //     // animationDuration: Duration(milliseconds: 3300),
                                        //         //     backgroundGradient: LinearGradient(
                                        //         //         colors: [Colors.transparent, Colors.white12],
                                        //         //     ),
                                        //         //   borderColor: Colors.amber,
                                        //         //   borderWidth: 4,
                                        //         //   boxShadows: [
                                        //         //     BoxShadow(
                                        //         //       color: Colors.black12,
                                        //         //       offset: Offset(30, 50),
                                        //         //       spreadRadius: 20,
                                        //         //       blurRadius: 5)
                                        //         //
                                        //         //   ],
                                        //         //   isDismissible: true,
                                        //         //   dismissDirection: DismissDirection.horizontal,
                                        //         //   forwardAnimationCurve: Curves.bounceInOut,
                                        //         //   duration: Duration(milliseconds: 5000),
                                        //         //   icon: Icon(
                                        //         //     Icons.send,
                                        //         //     color: Colors.black,
                                        //         //   ),
                                        //         //   // width podanu border color kooda
                                        //         // // shouldIconPulse: false,
                                        //         //   leftBarIndicatorColor: Colors.white,
                                        //         //   mainButton: TextButton(onPressed: (){
                                        //         //     print ("Retry");
                                        //         //   }, child: Text("Retry"),),
                                        //         //   onTap: (anthingvalokay){
                                        //         //   print("Snackbar clicked");
                                        //         //   },
                                        //         //   overlayBlur: 5,
                                        //         //   overlayColor: Colors.pink,
                                        //         //   padding: EdgeInsets.all(50),
                                        //         //   showProgressIndicator: true,
                                        //         //   progressIndicatorBackgroundColor: Colors.green,
                                        //         //   progressIndicatorValueColor:
                                        //         //     AlwaysStoppedAnimation<Color>(Colors.black),
                                        //         //   // reverseAnimationCurve: Curves.bounceInOut,
                                        //         //   snackbarStatus: (yedho){
                                        //         //   print(yedho);
                                        //         //   },
                                        //         //
                                        //         //   // userInputForm: Form(child: Row(
                                        //         //   //   children: [
                                        //         //   //     Expanded(child: TextField()),
                                        //         //   //   ],
                                        //         //   // ))
                                        //         //
                                        //         //
                                        //         //
                                        //         //
                                        //         // );
                                        //
                                        //
                                        //         //dialogboxpopup
                                        //
                                        //
                                        //         //  Get.defaultDialog(
                                        //         //    title: "Diaglog Title",
                                        //         //    titleStyle: TextStyle(fontSize: 25),
                                        //         //    middleText: "This is middle text",
                                        //         //    middleTextStyle: TextStyle(fontSize: 20),
                                        //         //    backgroundColor: Colors.blue,
                                        //         //    radius: 80,
                                        //         //      // to customize the middle text
                                        //         //    content: Row(
                                        //         //      children: [
                                        //         //        CircularProgressIndicator(),
                                        //         //        SizedBox(
                                        //         //          width: 20,
                                        //         //        ),
                                        //         //        Expanded(child: Text("Data Loading")),
                                        //         //      ],
                                        //         //    ),
                                        //         //    textCancel: "Cancel",
                                        //         //    cancelTextColor: Colors.white,
                                        //         //    textConfirm: "Confirm",
                                        //         //    confirmTextColor: Colors.blue,
                                        //         //    onCancel: (){},
                                        //         //    onConfirm: (){},
                                        //         //    buttonColor: Colors.green,
                                        //         //    cancel: Icon(Icons.abc),
                                        //         //    confirm: Icon(Icons.ac_unit),
                                        //         // //actions
                                        //         //    actions: [
                                        //         //      ElevatedButton(onPressed: (){
                                        //         //        Get.back();
                                        //         //      }, child: Text("Action1"),),
                                        //         //      ElevatedButton(onPressed: (){
                                        //         //        Get.back();
                                        //         //      }, child: Text("Action2"),),
                                        //         //    ],
                                        //         //    barrierDismissible: false,
                                        //         //
                                        //         //  );
                                        //
                                        //
                                        //         //bottomsheet
                                        //
                                        //         Get.bottomSheet(Container(
                                        //           height: 430,
                                        //           width: 400,
                                        //           child: Wrap(
                                        //             children: <Widget>[
                                        //               NumericPad(
                                        //                 onNumberSelected: (value) {
                                        //                   (() {
                                        //                     if (value != -1) {
                                        //                       phoneNumber = phoneNumber + value.toString();
                                        //                     } else {
                                        //                       phoneNumber =
                                        //                           phoneNumber.substring(0, phoneNumber.length - 1);
                                        //                     }
                                        //                   });
                                        //                 },
                                        //               ),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //           // barrierColor: Colors.blue,
                                        //           backgroundColor: Colors
                                        //               .purple,
                                        //           isDismissible: true,
                                        //           shape: RoundedRectangleBorder(
                                        //             borderRadius: BorderRadius
                                        //                 .circular(10.0),
                                        //             side: BorderSide(
                                        //                 color: Colors.white,
                                        //                 style: BorderStyle
                                        //                     .solid,
                                        //                 width: 2.0
                                        //             ),
                                        //           ),
                                        //           enableDrag: true,
                                        //         );
                                        //       },
                                        //       // NumericPad(
                                        //       //   onNumberSelected: (value) {
                                        //       //     setState(() {
                                        //       //       if (value != -1) {
                                        //       //         phoneNumber = phoneNumber + value.toString();
                                        //       //       } else {
                                        //       //         phoneNumber =
                                        //       //             phoneNumber.substring(0, phoneNumber.length - 1);
                                        //       //       }
                                        //       //     });
                                        //       //   },
                                        //       // );
                                        //       child:
                                        //
                                        //       Container(
                                        //         decoration: BoxDecoration(
                                        //           // border: Border.all(),
                                        //           borderRadius: BorderRadius
                                        //               .circular(10),
                                        //           color: Colors.black38,
                                        //           // color: Colors.pule.shade400,
                                        //         ),
                                        //         height: 80,
                                        //         width: 450,
                                        //         child: Row(
                                        //           children: [
                                        //             // ElevatedButton(onPressed: (){
                                        //             // }, child: Text(selectedCountry.isoCode)),
                                        //             SizedBox(width: 8,),
                                        //             Text(
                                        //               "+91", style: TextStyle(
                                        //                 fontSize: 20
                                        //             ),),
                                        //             SizedBox(width: 8),
                                        //             // TextFormField(
                                        //             //   controller: _codecontroller,
                                        //             //
                                        //             // ),
                                        //             Text(
                                        //                 phoneNumber,
                                        //                 style: CustomTextStyles
                                        //                     .bodySmallRobotoWhiteA700_1),
                                        //             SizedBox(width: 8,)
                                        //           ],
                                        //         ),
                                        //       ),
                                        //     )),
                                        // old ui


                                        // GestureDetector(
                                        //
                                        //   child: Container(
                                        //
                                        //     height: 60,
                                        //     width: 400,
                                        //     decoration: BoxDecoration(
                                        //       color: Colors.white,
                                        //     ),
                                        //
                                        //     child: Text(
                                        //       phoneNumber,style: TextStyle(color: Colors.purple),
                                        //
                                        //     ),
                                        //   ),
                                        // ),
                                        // Obx(() => Text(
                                        //   phoneNumber,
                                        //   // country: controller
                                        //   //     .selectedCountry.value,
                                        //   // controller: controller
                                        //   //     .phoneNumberController,
                                        //   // onTap: (Country value) {
                                        //   //   controller.selectedCountry
                                        //   //       .value = value
                                        //   //   ;
                                        //   // }
                                        // ),
                                        // ),
                                        SizedBox(height: 30),
                                        // CustomElevatedButton(
                                        //
                                        //     text: "lbl_send_via_sms"
                                        //         .tr
                                        //         .toUpperCase(),
                                        //     buttonTextStyle:
                                        //     CustomTextStyles
                                        //         .titleSmallRoboto,
                                        //     onPressed: () {
                                        //       data = phoneNumber;
                                        //       phoneNumber = "";
                                        //
                                        //       setState(() {});
                                        //
                                        //       _signInWithMobileNumber();
                                        //     }),
                                        Center(
                                          child: ElevatedButton(
                                            // decoration: BoxDecoration(
                                            //   color: Colors.purple,
                                            // // ),
                                            // key:
                                            //     "lbl_get_started".tr.toUpperCase(),

                                            // buttonTextStyle:
                                            //     CustomTextStyles.titleSmallRoboto_1,
                                            // onPressed: () {
                                            //   navitoregis();
                                            // },
                                            // alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 12,
                                                  bottom: 12,
                                                  right: 20),
                                              child: Text(
                                                "Send via Sms",
                                                style: TextStyle(fontSize: 21),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.purple,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                )), onPressed: () {
                                            if (_formKey.currentState!.validate()){
                                              SignUPController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                                              Get.offNamed(AppRoutes.fourScreen);
                                            }
                                            // setState(() {
                                            //   _validate = _codecontroller.text.isEmpty;
                                            // });
                                          },
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        Center(
                                          child: ElevatedButton(
                                            // decoration: BoxDecoration(
                                            //   color: Colors.purple,
                                            // // ),
                                            // key:
                                            //     "lbl_get_started".tr.toUpperCase(),
                                            //
                                            // buttonTextStyle:
                                            //     CustomTextStyles.titleSmallRoboto_1,
                                            // onPressed: () {
                                            //   navitoregis();
                                            // },
                                            // alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15,
                                                  top: 12,
                                                  bottom: 12,
                                                  right: 15),
                                              child: Text(
                                                "Send via Email",
                                                style: TextStyle(fontSize: 21),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.purple,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                )), onPressed: () {
                                            navito();

                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(builder: (context) =>  navito()),
                                            // );
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             ()));
                                          },
                                          ),
                                        ),
                                        SizedBox(height: 71),
                                        Container(
                                            width: 227,
                                            margin: EdgeInsets.only(
                                                left: 22, right: 30),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                      "msg_by_creating_and_or2"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodySmallffffffff11),
                                                  TextSpan(
                                                      text:
                                                      "msg_terms_conditions2"
                                                          .tr,
                                                      style: theme
                                                          .textTheme
                                                          .labelMedium),
                                                  TextSpan(
                                                      text: "lbl4".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallffa456f6)
                                                ]),
                                                textAlign:
                                                TextAlign.center)),
                                      ])))
                        ]))))
          ]),
        ),
      ),
    );
  }

  eight() {
    Get.offNamed(AppRoutes.fourScreen);
  }
  navito() {
    Get.offNamed(AppRoutes.fourScreen);
  }
// @override
// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//   super.debugFillProperties(properties);
//   properties.add(DiagnosticsProperty<bool>('_validate', _validate));
// }
}
// }
// class TwoScreen extends GetWidget<TwoController> {
//   const TwoScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             body: SizedBox(
//                 width: 395.h,
//                 child: Column(mainAxisSize: MainAxisSize.min, children: [
//                   SizedBox(height: 10.v),
//                   Expanded(
//                       child: SingleChildScrollView(
//                           child: Container(
//                               height: SizeUtils.height,
//                               width: double.maxFinite,
//                               margin: EdgeInsets.only(
//                                   left: 10.h, right: 10.h, bottom: 10.v),
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 21.h, vertical: 19.v),
//                               child:
//                                   Stack(alignment: Alignment.center, children: [
//                                 Align(
//                                     alignment: Alignment.center,
//                                     child: Container(
//                                         height: 771.v,
//                                         width: 333.h,
//                                         decoration: BoxDecoration(
//                                             color: appTheme.gray90001,
//                                             borderRadius:
//                                                 BorderRadius.circular(32.h)))),
//                                 Align(
//                                     alignment: Alignment.center,
//                                     child: Padding(
//                                         padding: EdgeInsets.only(
//                                             left: 29.h, right: 24.h),
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             children: [
//                                               Text("lbl_registration".tr,
//                                                   style: CustomTextStyles
//                                                       .titleLargeRobotoPrimary),
//                                               SizedBox(height: 13.v),
//                                               Container(
//                                                   width: 245.h,
//                                                   margin: EdgeInsets.only(
//                                                       left: 16.h, right: 19.h),
//                                                   child: Text(
//                                                       "msg_enter_your_mobile"
//                                                           .tr,
//                                                       maxLines: 2,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       textAlign:
//                                                           TextAlign.center,
//                                                       style: CustomTextStyles
//                                                           .bodySmallRobotoWhiteA700Light_1)),
//                                               SizedBox(height: 29.v),
//                                               Container(
//                                                   width: 118.h,
//                                                   margin: EdgeInsets.symmetric(
//                                                       horizontal: 80.h),
//                                                   padding: EdgeInsets.symmetric(
//                                                       horizontal: 6.h,
//                                                       vertical: 53.v),
//                                                   decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                           image: AssetImage(
//                                                               ImageConstant
//                                                                   .imgGroup891),
//                                                           fit: BoxFit.cover)),
//                                                   child: Column(
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .start,
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .center,
//                                                       children: [
//                                                         SizedBox(height: 2.v),
//                                                         Container(
//                                                             height:
//                                                                 18.adaptSize,
//                                                             width: 18.adaptSize,
//                                                             decoration: BoxDecoration(
//                                                                 color: theme
//                                                                     .colorScheme
//                                                                     .onError,
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             9.h)))
//                                                       ])),
//                                               SizedBox(height: 81.v),
//                                               Align(
//                                                   alignment:
//                                                       Alignment.centerLeft,
//                                                   child: Opacity(
//                                                       opacity: 0.5,
//                                                       child: Text(
//                                                           "lbl_phone_number".tr,
//                                                           style: CustomTextStyles
//                                                               .bodySmallRobotoWhiteA700_1))),
//                                               Obx(() => Text(
//                                                 // phoneNumber,
//                                                   // country: controller
//                                                   //     .selectedCountry.value,
//                                                   // controller: controller
//                                                   //     .phoneNumberController,
//                                                   // onTap: (Country value) {
//                                                   //   controller.selectedCountry
//                                                   //       .value = value
//                                                   //   ;
//                                                   // }
//                                                   ),
//                                               ),
//                                               SizedBox(height: 49.v),
//                                               CustomElevatedButton(
//                                                   text: "lbl_send_via_sms"
//                                                       .tr
//                                                       .toUpperCase(),
//                                                   buttonTextStyle:
//                                                       CustomTextStyles
//                                                           .titleSmallRoboto,
//                                                   onPressed: () {
//                                                     navitiotp();
//                                                   }),
//                                               SizedBox(height: 16.v),
//                                               CustomElevatedButton(
//                                                   text: "msg_send_via_whatsapp"
//                                                       .tr
//                                                       .toUpperCase(),
//                                                   buttonTextStyle:
//                                                       CustomTextStyles
//                                                           .titleSmallRoboto),
//                                               SizedBox(height: 71.v),
//                                               Container(
//                                                   width: 227.h,
//                                                   margin: EdgeInsets.only(
//                                                       left: 22.h, right: 30.h),
//                                                   child: RichText(
//                                                       text: TextSpan(children: [
//                                                         TextSpan(
//                                                             text:
//                                                                 "msg_by_creating_and_or2"
//                                                                     .tr,
//                                                             style: CustomTextStyles
//                                                                 .bodySmallffffffff11),
//                                                         TextSpan(
//                                                             text:
//                                                                 "msg_terms_conditions2"
//                                                                     .tr,
//                                                             style: theme
//                                                                 .textTheme
//                                                                 .labelMedium),
//                                                         TextSpan(
//                                                             text: "lbl4".tr,
//                                                             style: CustomTextStyles
//                                                                 .bodySmallffa456f6)
//                                                       ]),
//                                                       textAlign:
//                                                           TextAlign.center))
//                                             ])))
//                               ]))))
//                 ]))));
//   }
//
//   /// Navigates to the threeScreen when the action is triggered.
//   navitiotp() {
//     Get.offNamed(
//       AppRoutes.threeScreen,
//     );
//   }
// }
