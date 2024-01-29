import 'package:faz/core/app_export.dart';import 'package:faz/presentation/electric_three_screen/models/electric_three_model.dart';import 'package:flutter/material.dart';/// A controller class for the ElectricThreeScreen.
///
/// This class manages the state of the ElectricThreeScreen, including the
/// current electricThreeModelObj
class ElectricThreeController extends GetxController {TextEditingController frameController = TextEditingController();

TextEditingController houseNoController = TextEditingController();

Rx<ElectricThreeModel> electricThreeModelObj = ElectricThreeModel().obs;

@override void onClose() { super.onClose(); frameController.dispose(); houseNoController.dispose(); } 
 }
