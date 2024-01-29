import 'package:faz/core/app_export.dart';import 'package:faz/presentation/forty_screen/models/forty_model.dart';import 'package:flutter/material.dart';/// A controller class for the FortyScreen.
///
/// This class manages the state of the FortyScreen, including the
/// current fortyModelObj
class FortyController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<FortyModel> fortyModelObj = FortyModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
