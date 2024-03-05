import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';


class Razorpays extends StatefulWidget {
  const Razorpays({super.key});

  @override
  State<Razorpays> createState() => _RazorpaysState();
}

class _RazorpaysState extends State<Razorpays> {
  @override
  void initState(){
    super.initState();
    _razorpay = Razorpay();
    amtController = TextEditingController();

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  }
  GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  late Razorpay _razorpay;
  TextEditingController amtController = TextEditingController();

  // void openCheckout(amount)async{
  //   amount = amount *100;
  //   var options = {
  //     'key' : 'rzp_test_4b6gNb663xUwid',
  //     'amount' : amount ,
  //     'name' : 'Haqto',
  //     'prefill': {'contact' : '123456789' , 'email': 'test@gmail.com'},
  //     'external': {
  //       'wallets': ['paytm']
  //     }
  //   };
  //   try {
  //     _razorpay.open(options);
  //
  //
  //   }catch (e){
  //     debugPrint('Error : e');
  //   }
  // }







  // @override
  void dispose(){
    super.dispose();
    _razorpay.clear(); // Removes all listeners
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(msg: "Payment Successfull"+response.paymentId!,toastLength: Toast.LENGTH_SHORT);
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(msg: "Payment Fail"+response.message!,toastLength: Toast.LENGTH_SHORT);
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(msg: "External Wallet"+response.walletName!,toastLength: Toast.LENGTH_SHORT);
    // Do something when an external wallet is selected
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
            leadingWidth: 77,
            leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgBack,
                margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
                onTap: () {
                  onTapBack();
                }),
            title: AppbarTitle(
                text: "lbl_mobile_recharge".tr,
                margin: EdgeInsets.only(left: 15)),
            backgroundColor: Colors.purpleAccent[500],

        ),

       body: SingleChildScrollView(
         child: Form(
           key: _formKey2,
           child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text("Welcome to Razor pay payment integration"),
                SizedBox(
                  height: 50,
                ),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle1064,
                    height: 173,
                    width: 334,
                    radius: BorderRadius.circular(6)),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    autofocus: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Enter Amount to be paid',
                      labelStyle: TextStyle(fontSize: 15,color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,

                          )
                      ),
                      errorStyle: TextStyle(color: Colors.red,fontSize: 15),
                    ),
                    // get find and get put another method
                    controller: amtController,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'Please Enter amount to be paid';
                      }
                      return null;

                    },
                  ),
                ),
                SizedBox(height: 110),
                ElevatedButton(onPressed: (){
                 if(!_formKey2.currentState!.validate()){
                   return;
                 }
                 _formKey2.currentState!.save();
                 var options= {
                   "key": "rzp_test_4b6gNb663xUwid",
                   "amount":num.parse(amtController.text)*100,
                   "name": "Recharge",
                   "description": "Payment Gateway",
                   "prefill":{
                     "contact":"1234567890",
                     "email":"testemail@gmail.com"
                   },
                  "external":{
                     "wallets":["paytm"]
                  },
                 };
                 try {
                   _razorpay.open(options);


                 }catch (e){
                   debugPrint(e.toString());
                 }
                  // if(
                  // amtController.text.toString().isNotEmpty){
                  //   setState(() {
                  //     int amount = int.parse(amtController.text.toString());
                  //     openCheckout(amount);
                  //   });
                  // }
                }, child: Text("Pay"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),

                ),
               SizedBox(height: 30),
                ElevatedButton(onPressed: (){
                  Get.offNamed(AppRoutes.fortysixScreen);
                }, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Next page"),
                ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                ),
              ],
            ),
         ),
       )
    );
    // Container(
    //   child: Text("Welcome to Razor pay payment integration"),
    //
    // );
  }
  onTapBack() {
    Get.toNamed(
      AppRoutes.tenScreen,
    );
  }
}
