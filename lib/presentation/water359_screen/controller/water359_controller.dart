import 'package:faz/core/app_export.dart';import 'package:faz/presentation/water359_screen/models/water359_model.dart';import 'package:flutter/material.dart';/// A controller class for the Water359Screen.
///
/// This class manages the state of the Water359Screen, including the
/// current water359ModelObj
class Water359Controller extends GetxController {TextEditingController editTextController = TextEditingController();

Rx<Water359Model> water359ModelObj = Water359Model().obs;

@override void onClose() { super.onClose(); editTextController.dispose(); } 
 }
