import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';
import 'framelist_item_model.dart';
import 'dynamictextlist_item_model.dart';

/// This class defines the variables used in the [eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightModel {
 Rx<List<UserprofilelistItemModel>> userprofilelistItem = Rx([
   UserprofilelistItemModel(
   cable: ImageConstant.imgBxCableCar.obs,
   cableText: "Cable".obs,
   Mobile: ImageConstant.imgThumbsUpPrimary.obs,
   MobileText: "Mobile Recharge".obs,
   Electricity: ImageConstant.imgThumbsUpPrimary24x22.obs,
   ElectricityText: "Electricity".obs,
   DTH: ImageConstant.imgMaskGroup.obs,
   DTHText: "DTH".obs,
   Gas: ImageConstant.imgIconoirGas.obs,
   GasText: "Gas".obs,
   Watter: ImageConstant.imgGroup33703.obs,
   WaterText: "Water".obs,
  )
 ]);

  Rx<List<FramelistItemModel>> framelistItemList = Rx([
    FramelistItemModel(rectangle: ImageConstant.imgRectangle1060.obs),
    FramelistItemModel(rectangle: ImageConstant.imgRectangle1061.obs),
    FramelistItemModel(rectangle: ImageConstant.imgRectangle1062.obs),
    FramelistItemModel(rectangle: ImageConstant.imgRectangle1060.obs),
    FramelistItemModel(rectangle: ImageConstant.imgRectangle1061.obs),
    FramelistItemModel(rectangle: ImageConstant.imgRectangle1065.obs)
  ]);

  Rx<List<DynamictextlistItemModel>> dynamictextlistItemList = Rx([
    DynamictextlistItemModel(
        text1: "Apple".obs,
        text2: "+0.75962 BTC".obs,
        text3: "Mcdonalds".obs,
        text4: "+0.65841 BTC".obs,
        text5: "Amazon".obs,
        text6: "+0.47865 BTC".obs)
  ]);
}
