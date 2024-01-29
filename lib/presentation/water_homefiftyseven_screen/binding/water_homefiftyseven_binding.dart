import '../controller/water_homefiftyseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WaterHomefiftysevenScreen.
///
/// This class ensures that the WaterHomefiftysevenController is created when the
/// WaterHomefiftysevenScreen is first loaded.
class WaterHomefiftysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaterHomefiftysevenController());
  }
}
