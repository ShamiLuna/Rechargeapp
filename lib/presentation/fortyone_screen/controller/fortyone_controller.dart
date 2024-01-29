import 'package:faz/core/app_export.dart';import 'package:faz/presentation/fortyone_screen/models/fortyone_model.dart';import 'package:flutter/material.dart';/// A controller class for the FortyoneScreen.
///
/// This class manages the state of the FortyoneScreen, including the
/// current fortyoneModelObj
class FortyoneController extends GetxController {TextEditingController mobileNumberController = TextEditingController();

Rx<FortyoneModel> fortyoneModelObj = FortyoneModel().obs;

@override void onClose() { super.onClose(); mobileNumberController.dispose(); } 
 }
