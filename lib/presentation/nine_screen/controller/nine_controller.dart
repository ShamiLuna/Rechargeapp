import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/nine_screen/models/nine_model.dart';

/// A controller class for the NineScreen.
///
/// This class manages the state of the NineScreen, including the
/// current nineModelObj
class NineController extends GetxController {
  Rx<NineModel> nineModelObj = NineModel().obs;

  @override
  void onReady() {
    Get.offNamed(
      AppRoutes.nineScreen,

    );
    Get.offNamed(
      AppRoutes.fortyScreen,

    );
    // Get.offNamed(
    //   AppRoutes.frame33729Screen,
    //
    // );
    Get.offNamed(
      AppRoutes.tenScreen,

    );
    Get.offNamed(
      AppRoutes.thirtyScreen,

    );
    Get.offNamed(
      AppRoutes.gasHomefiftyoneScreen,

    );
    Get.offNamed(
      AppRoutes.waterHomefiftysevenScreen,

    );
    Get.offNamed(
      AppRoutes.electricOneScreen,

    );
  }
  @override
  void onInit(){
    Get.offNamed(
      AppRoutes.nineScreen,

    );
  }
}
