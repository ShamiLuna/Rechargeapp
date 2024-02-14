import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.

class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.cable,
    this.cableText,
    this.id,
    this.Mobile,
    this.MobileText,
    this.id2,
    this.Electricity,
    this.ElectricityText,
    this.id3,
    this.DTH,
    this.DTHText,
    this.id4,
    this.Gas,
    this.GasText,
    this.id5,
    this.Watter,
    this.WaterText,
    this.id6,
  }) {
    cable = cable ?? Rx(ImageConstant.imgBxCableCar);
    cableText = cableText ?? Rx("Cable");
    id = id ?? Rx("");
    Mobile = Mobile ?? Rx(ImageConstant.imgThumbsUpPrimary);
    MobileText = MobileText ?? Rx("Cable");
    id2 = id ?? Rx("");
    Electricity = Electricity ?? Rx(ImageConstant.imgThumbsUpPrimary24x22);
    ElectricityText = ElectricityText ?? Rx("Cable");
    id3 = id ?? Rx("");
    DTH = DTH ?? Rx(ImageConstant.imgMaskGroup);
    DTHText = DTHText ?? Rx("Cable");
    id4 = id ?? Rx("");
    Gas = Gas ?? Rx(ImageConstant.imgIconoirGas);
    GasText = GasText ?? Rx("Cable");
    id5 = id ?? Rx("");
    Watter = Watter ?? Rx(ImageConstant.imgGroup33703);
    WaterText = WaterText ?? Rx("Cable");
    id6 = id ?? Rx("");
  }

  Rx<String>? cable;

  Rx<String>? cableText;

  Rx<String>? id;

  Rx<String>? Mobile;

  Rx<String>? MobileText;

  Rx<String>? id2;

  Rx<String>?Electricity;

  Rx<String>? ElectricityText;

  Rx<String>? id3;

  Rx<String>?DTH;

  Rx<String>? DTHText;

  Rx<String>? id4;

  Rx<String>? Gas;

  Rx<String>? GasText;

  Rx<String>? id5;

  Rx<String>? Watter;

  Rx<String>? WaterText;

  Rx<String>? id6;


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
