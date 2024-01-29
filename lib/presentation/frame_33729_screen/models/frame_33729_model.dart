import '../../../core/app_export.dart';import 'transferhistory_item_model.dart';import 'cart_item_model.dart';/// This class defines the variables used in the [frame_33729_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Frame33729Model {Rx<List<TransferhistoryItemModel>> transferhistoryItemList = Rx([TransferhistoryItemModel(transferImage1:ImageConstant.imgArrowRight.obs,transferImage2:ImageConstant.imgLightBulb.obs)]);

Rx<List<CartItemModel>> cartItemList = Rx([CartItemModel(cartIcon:ImageConstant.imgCart.obs),CartItemModel(cartIcon:ImageConstant.imgUserPrimary.obs),CartItemModel(cartIcon:ImageConstant.imgComputer.obs)]);

 }
