import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.

class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.cableImage,
    this.dynamicTextProp,
    this.id,
  }) {
    cableImage = cableImage ?? Rx(ImageConstant.imgTelevision);
    dynamicTextProp = dynamicTextProp ?? Rx("Cable");
    id = id ?? Rx("");
  }

  Rx<String>? cableImage;

  Rx<String>? dynamicTextProp;

  Rx<String>? id;
}
class UserprofilelistItemModel2 {
 UserprofilelistItemModel2({
  this.cableImage,
  this.dynamicTextProp,
  this.id,
 }) {
  cableImage = cableImage ?? Rx(ImageConstant.imgTelevision);
  dynamicTextProp = dynamicTextProp ?? Rx("Mobile Recharge");
  id = id ?? Rx("");
 }

 Rx<String>? cableImage;

 Rx<String>? dynamicTextProp;

 Rx<String>? id;
}
class UserprofilelistItemModel3 {
 UserprofilelistItemModel3({
  this.cableImage,
  this.dynamicTextProp,
  this.id,
 }) {
  cableImage = cableImage ?? Rx(ImageConstant.imgTelevision);
  dynamicTextProp = dynamicTextProp ?? Rx("Electricity");
  id = id ?? Rx("");
 }

 Rx<String>? cableImage;

 Rx<String>? dynamicTextProp;

 Rx<String>? id;
}
class UserprofilelistItemModel4 {
 UserprofilelistItemModel4({
  this.cableImage,
  this.dynamicTextProp,
  this.id,
 }) {
  cableImage = cableImage ?? Rx(ImageConstant.imgTelevision);
  dynamicTextProp = dynamicTextProp ?? Rx("DTH");
  id = id ?? Rx("");
 }

 Rx<String>? cableImage;

 Rx<String>? dynamicTextProp;

 Rx<String>? id;
}
