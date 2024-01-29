import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [manual_verification_wsixtyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ManualVerificationWsixtyoneModel {Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(accountText: "My Account".obs,userImage:ImageConstant.imgImage2.obs,amountText: "3500.00".obs,cardNumberText: "****3298".obs,cardTypeText: "Digital".obs,transferVisaText: "Transfer Visa".obs,transferCardNumberText: "******3298".obs),Userprofile1ItemModel(transferVisaText: "Transfer Sona Bank".obs,transferCardNumberText: "******3298".obs),Userprofile1ItemModel(transferVisaText: "Transfer Getek Bank".obs,transferCardNumberText: "******3298".obs),Userprofile1ItemModel(transferVisaText: "Transfer Ateul Bank".obs,transferCardNumberText: "******3298".obs)]);

 }
