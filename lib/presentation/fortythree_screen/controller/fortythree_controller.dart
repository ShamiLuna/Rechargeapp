import 'package:faz/core/app_export.dart';import 'package:faz/presentation/fortythree_screen/models/fortythree_model.dart';import 'package:flutter/material.dart';/// A controller class for the FortythreeScreen.
///
/// This class manages the state of the FortythreeScreen, including the
/// current fortythreeModelObj
class FortythreeController extends GetxController {TextEditingController frameEditTextController = TextEditingController();

Rx<FortythreeModel> fortythreeModelObj = FortythreeModel().obs;

@override void onClose() { super.onClose(); frameEditTextController.dispose(); } 
 }
