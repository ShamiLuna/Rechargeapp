import 'package:faz/core/app_export.dart';import 'package:faz/presentation/fortytwo_screen/models/fortytwo_model.dart';import 'package:flutter/material.dart';/// A controller class for the FortytwoScreen.
///
/// This class manages the state of the FortytwoScreen, including the
/// current fortytwoModelObj
class FortytwoController extends GetxController {TextEditingController dnoController = TextEditingController();

TextEditingController billnoController = TextEditingController();

TextEditingController flatnoController = TextEditingController();

TextEditingController senoController = TextEditingController();

Rx<FortytwoModel> fortytwoModelObj = FortytwoModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); dnoController.dispose(); billnoController.dispose(); flatnoController.dispose(); senoController.dispose(); } 
onSelected(dynamic value) { for (var element in fortytwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} fortytwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in fortytwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} fortytwoModelObj.value.dropdownItemList1.refresh(); } 
 }
