import '../controller/payment_detailswsixtytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentDetailswsixtytwoScreen.
///
/// This class ensures that the PaymentDetailswsixtytwoController is created when the
/// PaymentDetailswsixtytwoScreen is first loaded.
class PaymentDetailswsixtytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentDetailswsixtytwoController());
  }
}
