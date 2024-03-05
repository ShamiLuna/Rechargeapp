import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

/// This class defines the variables used in the [thirteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirteenModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        accountName: "My Account".obs,
        userImage: ImageConstant.imgImage2.obs,
        accountBalance: "3500.00".obs,
        accountNumber: "****3298".obs,
        accountType: "Digital".obs,
        transferVisa: "Transfer Visa".obs,
        transferAccountNumber: "******3298".obs),
    Userprofile2ItemModel(
        transferVisa: "Transfer Sona Bank".obs,
        transferAccountNumber: "******3298".obs),
    Userprofile2ItemModel(
        transferVisa: "Transfer Getek Bank".obs,
        transferAccountNumber: "******3298".obs),
    Userprofile2ItemModel(
        transferVisa: "Transfer Ateul Bank".obs,
        transferAccountNumber: "******3298".obs)
  ]);
}
