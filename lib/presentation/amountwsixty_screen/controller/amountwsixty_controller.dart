import 'package:faz/core/app_export.dart';import 'package:faz/presentation/amountwsixty_screen/models/amountwsixty_model.dart';import 'package:flutter/material.dart';/// A controller class for the AmountwsixtyScreen.
///
/// This class manages the state of the AmountwsixtyScreen, including the
/// current amountwsixtyModelObj
class AmountwsixtyController extends GetxController {TextEditingController amountController = TextEditingController();

Rx<AmountwsixtyModel> amountwsixtyModelObj = AmountwsixtyModel().obs;

@override void onClose() { super.onClose(); amountController.dispose(); } 
 }
