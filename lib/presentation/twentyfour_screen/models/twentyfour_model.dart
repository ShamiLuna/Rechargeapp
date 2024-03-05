import 'package:faz/presentation/twentyfour_screen/models/userprofile2_item_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';

/// This class defines the variables used in the [twentyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentyfourModel  {
  Rx<List<Userprofile23ItemModel>> userprofile23ItemList = Rx([
    Userprofile23ItemModel(
        accountName: "My Account".obs,
        userImage: ImageConstant.imgImage2.obs,
        accountBalance: "3500.00".obs,
        accountNumber: "****3298".obs,
        accountType: "Digital".obs,
        transferVisa: "Transfer Visa".obs,
        transferAccountNumber: "******3298".obs),
    Userprofile23ItemModel(
        transferVisa: "Transfer Sona Bank".obs,
        transferAccountNumber: "******3298".obs),
    Userprofile23ItemModel(
        transferVisa: "Transfer Getek Bank".obs,
        transferAccountNumber: "******3298".obs),
    Userprofile23ItemModel(
        transferVisa: "Transfer Ateul Bank".obs,
        transferAccountNumber: "******3298".obs)
  ]);
}
