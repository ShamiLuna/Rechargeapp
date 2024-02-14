import '../../../core/app_export.dart';

/// This class is used in the [dynamictextlist_item_widget] screen.

class DynamictextlistItemModel {
  DynamictextlistItemModel({
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.id,
  }) {
    text1 = text1 ?? Rx("Apple");
    text2 = text2 ?? Rx("+0.75962 BTC");
    text3 = text3 ?? Rx("Mcdonalds");
    text4 = text4 ?? Rx("+0.65841 BTC");
    text5 = text5 ?? Rx("Amazon");
    text6 = text6 ?? Rx("+0.47865 BTC");
    id = id ?? Rx("");
  }

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? text4;

  Rx<String>? text5;

  Rx<String>? text6;

  Rx<String>? id;
}
