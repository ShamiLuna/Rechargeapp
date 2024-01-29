import '../../../core/app_export.dart';/// This class is used in the [cart_item_widget] screen.
class CartItemModel {CartItemModel({this.cartIcon, this.id, }) { cartIcon = cartIcon  ?? Rx(ImageConstant.imgCart);id = id  ?? Rx(""); }

Rx<String>? cartIcon;

Rx<String>? id;

 }
