import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/eight_screen/models/eight_model.dart';
import 'package:faz/presentation/eight_screen/models/framelist_item_model.dart';

import '../models/userprofilelist_item_model.dart';

/// A controller class for the EightScreen.
///
/// This class manages the state of the EightScreen, including the
/// current eightModelObj
class EightController extends GetxController {
  Rx<EightModel> eightModelObj = EightModel().obs;
  Rx<FramelistItemModel> framelistItemModelObj = FramelistItemModel().obs;
  // Rx<EightModel> UserprofilelistItemModelObj = UserprofilelistItemModel().obs;
  Rx<UserprofilelistItemModel> userprofilelistItemModelObj = UserprofilelistItemModel().obs;
  // void onInit(){
  //   Get.offNamed(
  //     AppRoutes.nineScreen,
  //   );
  // }
  void onReady()
  {
    Get.offNamed(
          AppRoutes.nineScreen,
        );

    Get.offNamed(
      AppRoutes.fortyScreen,

    );

    Get.offNamed(
      AppRoutes.frame33729Screen,

    );
    Get.offNamed(
      AppRoutes.tenScreen,

    );
    Get.offNamed(
      AppRoutes.electricOneScreen,

    );
    Get.offNamed(
      AppRoutes.gasHomefiftyoneScreen,

    );
    Get.offNamed(
      AppRoutes.nineScreen,

    );
  }
  @override
  void onInit(){
    // super.onInit();
    Get.offNamed(
      AppRoutes.eightScreen,
    );
    // EightModel();
    // FramelistItemModel();
    // UserprofilelistItemModel();

  }

}

