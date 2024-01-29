import 'package:faz/core/app_export.dart';import 'package:faz/presentation/eleven_tab_container_screen/models/eleven_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ElevenTabContainerScreen.
///
/// This class manages the state of the ElevenTabContainerScreen, including the
/// current elevenTabContainerModelObj
class ElevenTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController searchController1 = TextEditingController();

Rx<ElevenTabContainerModel> elevenTabContainerModelObj = ElevenTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

late TabController tabviewsController = Get.put(TabController(vsync: this, length: 3));

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

@override void onClose() { super.onClose(); searchController1.dispose(); } 
onSelected(dynamic value) { for (var element in elevenTabContainerModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} elevenTabContainerModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in elevenTabContainerModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} elevenTabContainerModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in elevenTabContainerModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} elevenTabContainerModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in elevenTabContainerModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} elevenTabContainerModelObj.value.dropdownItemList3.refresh(); } 
 }
