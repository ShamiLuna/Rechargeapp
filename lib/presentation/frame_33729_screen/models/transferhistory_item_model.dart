import '../../../core/app_export.dart';/// This class is used in the [transferhistory_item_widget] screen.
class TransferhistoryItemModel {TransferhistoryItemModel({this.transferImage1, this.transferImage2, this.id, }) { transferImage1 = transferImage1  ?? Rx(ImageConstant.imgArrowRight);transferImage2 = transferImage2  ?? Rx(ImageConstant.imgLightBulb);id = id  ?? Rx(""); }

Rx<String>? transferImage1;

Rx<String>? transferImage2;

Rx<String>? id;

 }
