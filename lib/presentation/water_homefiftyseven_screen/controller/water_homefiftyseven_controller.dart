import 'package:faz/core/app_export.dart';import 'package:faz/presentation/water_homefiftyseven_screen/models/water_homefiftyseven_model.dart';import 'package:flutter/material.dart';/// A controller class for the WaterHomefiftysevenScreen.
///
/// This class manages the state of the WaterHomefiftysevenScreen, including the
/// current waterHomefiftysevenModelObj
class WaterHomefiftysevenController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<WaterHomefiftysevenModel> waterHomefiftysevenModelObj = WaterHomefiftysevenModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
