import 'package:faz/core/app_export.dart';import 'package:faz/presentation/gas_registerfiftytwo_screen/models/gas_registerfiftytwo_model.dart';import 'package:flutter/material.dart';/// A controller class for the GasRegisterfiftytwoScreen.
///
/// This class manages the state of the GasRegisterfiftytwoScreen, including the
/// current gasRegisterfiftytwoModelObj
class GasRegisterfiftytwoController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController registerBookNumberController = TextEditingController();

TextEditingController registerBookNumberController1 = TextEditingController();

Rx<GasRegisterfiftytwoModel> gasRegisterfiftytwoModelObj = GasRegisterfiftytwoModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); registerBookNumberController.dispose(); registerBookNumberController1.dispose(); } 
 }
