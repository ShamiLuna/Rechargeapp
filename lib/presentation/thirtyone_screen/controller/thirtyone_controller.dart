import 'package:faz/core/app_export.dart';import 'package:faz/presentation/thirtyone_screen/models/thirtyone_model.dart';import 'package:flutter/material.dart';/// A controller class for the ThirtyoneScreen.
///
/// This class manages the state of the ThirtyoneScreen, including the
/// current thirtyoneModelObj
class ThirtyoneController extends GetxController {TextEditingController mobileNumberController = TextEditingController();

Rx<ThirtyoneModel> thirtyoneModelObj = ThirtyoneModel().obs;

@override void onClose() { super.onClose(); mobileNumberController.dispose(); } 
 }
