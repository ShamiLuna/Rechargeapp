import 'package:faz/core/app_export.dart';import 'package:faz/presentation/framef_screen/models/framef_model.dart';import 'package:flutter/material.dart';/// A controller class for the FramefScreen.
///
/// This class manages the state of the FramefScreen, including the
/// current framefModelObj
class FramefController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<FramefModel> framefModelObj = FramefModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
// @override void onReady() { Get.offNamed(AppRoutes.sixScreen,); }
 }
