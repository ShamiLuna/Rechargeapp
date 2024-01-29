import 'package:faz/core/app_export.dart';import 'package:faz/presentation/two_screen/models/two_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the TwoScreen.
///
/// This class manages the state of the TwoScreen, including the
/// current twoModelObj
class TwoController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<TwoModel> twoModelObj = TwoModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('62').obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
@override void onReady() { Get.offNamed(AppRoutes.threeScreen,); } 
 }
