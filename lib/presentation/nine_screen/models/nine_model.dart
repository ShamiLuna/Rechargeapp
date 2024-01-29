import '../../../core/app_export.dart';
import 'viewhierarchy1_item_model.dart';

/// This class defines the variables used in the [nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NineModel {
  Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([
    Viewhierarchy1ItemModel(
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
      WatterText: "Watter".obs,
    )
  ]);
}
