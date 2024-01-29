import '../controller/twentyfour_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentyfourScreen.
///
/// This class ensures that the TwentyfourController is created when the
/// TwentyfourScreen is first loaded.
class TwentyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentyfourController());
  }
}
