import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.circleImage, this.text, this.id, }) { circleImage = circleImage  ?? Rx(ImageConstant.imgEllipse773);text = text  ?? Rx("Bharat Gas");id = id  ?? Rx(""); }

Rx<String>? circleImage;

Rx<String>? text;

Rx<String>? id;

 }
