import '../controller/payment_details156_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentDetails156Screen.
///
/// This class ensures that the PaymentDetails156Controller is created when the
/// PaymentDetails156Screen is first loaded.
class PaymentDetails156Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentDetails156Controller());
  }
}
