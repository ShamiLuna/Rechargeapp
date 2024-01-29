import 'package:faz/core/app_export.dart';import 'package:faz/presentation/gas_homefiftyone_screen/models/gas_homefiftyone_model.dart';import 'package:flutter/material.dart';/// A controller class for the GasHomefiftyoneScreen.
///
/// This class manages the state of the GasHomefiftyoneScreen, including the
/// current gasHomefiftyoneModelObj
class GasHomefiftyoneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<GasHomefiftyoneModel> gasHomefiftyoneModelObj = GasHomefiftyoneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
