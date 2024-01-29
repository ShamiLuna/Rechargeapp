import 'package:faz/core/app_export.dart';import 'package:faz/presentation/electric_one_screen/models/electric_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ElectricOneScreen.
///
/// This class manages the state of the ElectricOneScreen, including the
/// current electricOneModelObj
class ElectricOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ElectricOneModel> electricOneModelObj = ElectricOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
