import 'package:faz/core/app_export.dart';import 'package:faz/presentation/twentytwo_screen/models/twentytwo_model.dart';import 'package:flutter/material.dart';/// A controller class for the TwentytwoScreen.
///
/// This class manages the state of the TwentytwoScreen, including the
/// current twentytwoModelObj
class TwentytwoController extends GetxController {TextEditingController dnoController = TextEditingController();

TextEditingController billNoController = TextEditingController();

TextEditingController flatNoController = TextEditingController();

TextEditingController seNoController = TextEditingController();

Rx<TwentytwoModel> twentytwoModelObj = TwentytwoModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); dnoController.dispose(); billNoController.dispose(); flatNoController.dispose(); seNoController.dispose(); } 
onSelected(dynamic value) { for (var element in twentytwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} twentytwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in twentytwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} twentytwoModelObj.value.dropdownItemList1.refresh(); } 
 }
