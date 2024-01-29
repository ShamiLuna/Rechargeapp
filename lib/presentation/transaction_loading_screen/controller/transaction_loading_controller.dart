import 'package:faz/core/app_export.dart';import 'package:faz/presentation/transaction_loading_screen/models/transaction_loading_model.dart';/// A controller class for the TransactionLoadingScreen.
///
/// This class manages the state of the TransactionLoadingScreen, including the
/// current transactionLoadingModelObj
class TransactionLoadingController extends GetxController {Rx<TransactionLoadingModel> transactionLoadingModelObj = TransactionLoadingModel().obs;

 }
