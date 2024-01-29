import '../controller/transaction_loadingwsixtyfour_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionLoadingwsixtyfourScreen.
///
/// This class ensures that the TransactionLoadingwsixtyfourController is created when the
/// TransactionLoadingwsixtyfourScreen is first loaded.
class TransactionLoadingwsixtyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionLoadingwsixtyfourController());
  }
}
