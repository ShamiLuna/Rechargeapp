import 'package:faz/core/app_export.dart';import 'package:faz/presentation/water258_screen/models/water258_model.dart';import 'package:flutter/material.dart';/// A controller class for the Water258Screen.
///
/// This class manages the state of the Water258Screen, including the
/// current water258ModelObj
class Water258Controller extends GetxController {TextEditingController dnoController = TextEditingController();

TextEditingController billNoController = TextEditingController();

TextEditingController flatNoController = TextEditingController();

TextEditingController seNoController = TextEditingController();

Rx<Water258Model> water258ModelObj = Water258Model().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); dnoController.dispose(); billNoController.dispose(); flatNoController.dispose(); seNoController.dispose(); } 
onSelected(dynamic value) { for (var element in water258ModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} water258ModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in water258ModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} water258ModelObj.value.dropdownItemList1.refresh(); } 
 }
