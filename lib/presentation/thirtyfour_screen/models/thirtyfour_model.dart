import '../../../core/app_export.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [thirtyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirtyfourModel {Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx([Userprofile3ItemModel(accountText: "My Account".obs,userImage:ImageConstant.imgImage2.obs,amountText: "3500.00".obs,cardNumberText: "****3298".obs,cardTypeText: "Digital".obs,transferVisaText: "Transfer Visa".obs,cardNumberText1: "******3298".obs),Userprofile3ItemModel(transferVisaText: "Transfer Sona Bank".obs,cardNumberText1: "******3298".obs),Userprofile3ItemModel(transferVisaText: "Transfer Getek Bank".obs,cardNumberText1: "******3298".obs),Userprofile3ItemModel(transferVisaText: "Transfer Ateul Bank".obs,cardNumberText1: "******3298".obs)]);

 }
