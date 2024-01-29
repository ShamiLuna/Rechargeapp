import '../controller/payment_pinfiftyseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPinfiftysevenScreen.
///
/// This class ensures that the PaymentPinfiftysevenController is created when the
/// PaymentPinfiftysevenScreen is first loaded.
class PaymentPinfiftysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPinfiftysevenController());
  }
}
