import 'package:faz/core/app_export.dart';import 'package:faz/presentation/thirty_screen/models/thirty_model.dart';import 'package:flutter/material.dart';/// A controller class for the ThirtyScreen.
///
/// This class manages the state of the ThirtyScreen, including the
/// current thirtyModelObj
class ThirtyController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ThirtyModel> thirtyModelObj = ThirtyModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
