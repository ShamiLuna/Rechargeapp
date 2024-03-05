// // import 'dart:ffi';
//
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
//
// import 'package:faz/core/app_export.dart';
// import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
// import 'package:faz/widgets/app_bar/appbar_title.dart';
// import 'package:faz/widgets/app_bar/custom_app_bar.dart';
// import 'package:faz/widgets/custom_elevated_button.dart';
// import 'package:flutter/material.dart';
//
//
// class TwelveScreen extends  StatefulWidget{
//   @override
//   State<TwelveScreen> createState() => _TwelveScreenState();
// }
//   // Rx<TwelveModel> twelveModelObj = TwelveModel().obs;
//
//
// class _TwelveScreenState extends State<TwelveScreen> {
//   GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
//
//   late Razorpay _razorpay;
//   TextEditingController amtController = TextEditingController();
//
//   void openCheckout(amount)async{
//     amount = amount *100;
//     var options = {
//       'key' : 'rzp_test_4b6gNb663xUwid',
//       'amount' : amount ,
//       'name' : 'Haqto',
//       'prefill': {'contact' : '123456789' , 'email': 'test@gmail.com'},
//       'external': {
//         'wallets': ['paytm']
//       }
//     };
//     try {
//       _razorpay.open(options);
//     }catch (e){
//       debugPrint('Error : e');
//     }
//   }
//
//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     Fluttertoast.showToast(msg: "Payment Successfull"+response.paymentId!,toastLength: Toast.LENGTH_SHORT);
//     // Do something when payment succeeds
//   }
//
//   void _handlePaymentError(PaymentFailureResponse response) {
//     Fluttertoast.showToast(msg: "Payment Fail"+response.message!,toastLength: Toast.LENGTH_SHORT);
//     // Do something when payment fails
//   }
//
//   void _handleExternalWallet(ExternalWalletResponse response) {
//     Fluttertoast.showToast(msg: "External Wallet"+response.walletName!,toastLength: Toast.LENGTH_SHORT);
//     // Do something when an external wallet is selected
//   }
//
//   @override
//   void dispose(){
//     // super.dispose();
//     _razorpay.clear(); // Removes all listeners
//   }
//
//   // @override
//   void iniState(){
//     // super.initState();
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//
//   }
//
//   // final TextEditingController amtController = TextEditingController();
//   //
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: _buildAppBar(),
//         body: Form(
//           key: _formKey2,
//           child: SizedBox(
//               width: 480,
//               child: SingleChildScrollView(
//                   child: Container(
//                       margin: EdgeInsets.only(bottom: 5),
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       child: Column(children: [
//                         SizedBox(height: 59),
//                         CustomImageView(
//                             imagePath: ImageConstant.imgRectangle1064,
//                             height: 173,
//                             width: 334,
//                             radius: BorderRadius.circular(6)),
//                         SizedBox(height: 46),
//                         Container(
//                             width: 325,
//                             margin: EdgeInsets.symmetric(horizontal: 25),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 19, vertical: 13),
//                             decoration: AppDecoration.outlineWhiteA700
//                                 .copyWith(
//                                     borderRadius:
//                                         BorderRadiusStyle.roundedBorder14),
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Opacity(
//                                       opacity: 0.5,
//                                       child: Text("lbl_enter_amount".tr,
//                                           style: CustomTextStyles
//                                               .bodySmallWhiteA700)),
//                                   SizedBox(height: 6),
//                                   Row(children: [
//                                     TextFormField(
//                                       cursorColor: Colors.white,
//                                       autofocus: false,
//                                       style: TextStyle(color: Colors.white),
//                                       decoration: InputDecoration(
//                                         labelText: 'Enter Amount to be paid',
//                                         labelStyle: TextStyle(fontSize: 15,color: Colors.white),
//                                         border: OutlineInputBorder(
//                                           borderSide: BorderSide(
//                                               color: Colors.white,
//                                               width: 1.0
//                                           ),
//                                         ),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                               color: Colors.white,
//                                               width: 1.0,
//
//                                             )
//                                         ),
//                                         errorStyle: TextStyle(color: Colors.red,fontSize: 15),
//                                       ),
//                                       // get find and get put another method
//                                       controller: amtController,
//                                       validator: (value){
//                                         if(value==null || value.isEmpty){
//                                           return 'Please Enter amount to be paid';
//                                         }
//                                         return null;
//
//                                       },
//                                     ),
//                                     // Text("lbl_150".tr,
//                                     //     style: CustomTextStyles
//                                     //         .titleLargeSemiBold),
//                                     Padding(
//                                         padding: EdgeInsets.only(left: 1),
//                                         child: SizedBox(
//                                             height: 29,
//                                             child: VerticalDivider(
//                                                 width: 1,
//                                                 thickness: 1,
//                                                 color:
//                                                     theme.colorScheme.primary,
//                                                 indent: 2,
//                                                 endIndent: 2)))
//                                   ]),
//                                   SizedBox(height: 2)
//                                 ])),
//                         SizedBox(height: 66),
//                         Padding(
//                             padding: EdgeInsets.only(left: 55, right: 50),
//                             child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("lbl_1".tr,
//                                       style: theme.textTheme.titleLarge),
//                                   Text("lbl_22".tr,
//                                       style: theme.textTheme.titleLarge),
//                                   Text("lbl_32".tr,
//                                       style: theme.textTheme.titleLarge)
//                                 ])),
//                         SizedBox(height: 27),
//                         Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 51),
//                             child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("lbl_4".tr,
//                                       style: theme.textTheme.titleLarge),
//                                   Text("lbl_5".tr,
//                                       style: theme.textTheme.titleLarge),
//                                   Text("lbl_6".tr,
//                                       style: theme.textTheme.titleLarge)
//                                 ])),
//                         SizedBox(height: 27),
//                         Padding(
//                             padding: EdgeInsets.only(left: 53, right: 50),
//                             child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("lbl_7".tr,
//                                       style: theme.textTheme.titleLarge),
//                                   Text("lbl_8".tr,
//                                       style: theme.textTheme.titleLarge),
//                                   Text("lbl_9".tr,
//                                       style: theme.textTheme.titleLarge)
//                                 ])),
//                         SizedBox(height: 27),
//                         Padding(
//                             padding: EdgeInsets.only(left: 55, right: 44),
//                             child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                       padding: EdgeInsets.only(top: 6),
//                                       child: Text("lbl4".tr,
//                                           style: theme.textTheme.titleLarge)),
//                                   Spacer(flex: 52),
//                                   Padding(
//                                       padding: EdgeInsets.only(top: 6),
//                                       child: Text("lbl_0".tr,
//                                           style: theme.textTheme.titleLarge)),
//                                   Spacer(flex: 47),
//                                   Padding(
//                                       padding: EdgeInsets.only(top: 6),
//                                       child: Text("lbl5".tr,
//                                           style: theme.textTheme.titleLarge))
//                                 ])),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               _buildBuyButton(),
//                       ])))),
//         ),
//         // bottomNavigationBar: _buildBuyButton()
//         );
//   }
//
//   /// Section Widget
//   PreferredSizeWidget _buildAppBar() {
//     return CustomAppBar(
//         leadingWidth: 77,
//         leading: AppbarLeadingImage(
//             imagePath: ImageConstant.imgBack,
//             margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
//             onTap: () {
//               onTapBack();
//             }),
//         title: AppbarTitle(
//             text: "msg_select_recharge".tr,
//             margin: EdgeInsets.only(left: 10)),
//         styleType: Style.bgFill);
//   }
//
//   /// Section Widget
//   _buildBuyButton() {
//     CustomElevatedButton(
//         width: 189,
//         text: "lbl_buy".tr.toUpperCase(),
//         margin: EdgeInsets.only(left: 113, right: 113, bottom: 47),
//         onPressed: () {
//           if(
//               amtController.text.toString().isNotEmpty) {
//             // Obx(() =>
//             //
//             // TwelveController.openCheckout(amount);,
//             //
//             //
//             // );
//
//             int amount = int.parse(amtController.text.toString());
//             openCheckout(amount);
//               ;
//
//             // try {
//             //   int amount = int.parse(TwelveController.amtController.text.toString());
//             //   TwelveController.openCheckout(amount);
//             //   // var matchList = await fetchMatches();
//             //   // list.add(matchList);
//             //   return ;
//             // } catch (Empty) {
//             //   print(Empty);
//             // }
//
//
//             // onTapBuyButton();
//             // try(
//             // TwelveController.amtController.text.toString().isNotEmpty){
//             //   Obx ((){
//             //     int amount = int.parse(TwelveController.amtController.text.toString());
//             //     TwelveController.openCheckout(amount);
//             //   });
//             // };
//
//
//             // );
//           }});
//   }
//
//   /// Navigates to the elevenTabContainerScreen when the action is triggered.
//   onTapBack() {
//     Get.toNamed(
//       AppRoutes.elevenTabContainerScreen,
//     );
//   }
//
//   /// Navigates to the thirteenScreen when the action is triggered.
//   onTapBuyButton() {
//     Get.toNamed(
//       AppRoutes.thirteenScreen,
//     );
//   }
// }
