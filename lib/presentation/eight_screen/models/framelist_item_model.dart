import '../../../core/app_export.dart';/// This class is used in the [framelist_item_widget] screen.
class FramelistItemModel {FramelistItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle1060);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
