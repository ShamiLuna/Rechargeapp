import 'package:faz/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class SignUPController extends GetxController{
  static SignUPController get instance => Get.find();


  final TextEditingController  phoneNo = TextEditingController();

  void phoneAuthentication (String phoneNo){
    // AuthenticationRepository.instance.phoneAuthentication(phoneNo);
    AuthController.instance.phoneAuthentication(phoneNo);
  }
}