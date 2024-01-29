import '../controller/transaction_succeswsixtyfive_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionSucceswsixtyfiveScreen.
///
/// This class ensures that the TransactionSucceswsixtyfiveController is created when the
/// TransactionSucceswsixtyfiveScreen is first loaded.
class TransactionSucceswsixtyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionSucceswsixtyfiveController());
  }
}
