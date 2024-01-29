import 'package:faz/core/app_export.dart';import 'package:faz/presentation/amount154_screen/models/amount154_model.dart';import 'package:flutter/material.dart';/// A controller class for the Amount154Screen.
///
/// This class manages the state of the Amount154Screen, including the
/// current amount154ModelObj
class Amount154Controller extends GetxController {TextEditingController amountController = TextEditingController();

Rx<Amount154Model> amount154ModelObj = Amount154Model().obs;

@override void onClose() { super.onClose(); amountController.dispose(); } 
 }
