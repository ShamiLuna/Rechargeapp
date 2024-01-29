import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.accountText, this.userImage, this.amountText, this.cardNumberText, this.cardTypeText, this.transferVisaText, this.transferCardNumberText, this.id, }) { accountText = accountText  ?? Rx("My Account");userImage = userImage  ?? Rx(ImageConstant.imgImage2);amountText = amountText  ?? Rx("3500.00");cardNumberText = cardNumberText  ?? Rx("****3298");cardTypeText = cardTypeText  ?? Rx("Digital");transferVisaText = transferVisaText  ?? Rx("Transfer Visa");transferCardNumberText = transferCardNumberText  ?? Rx("******3298");id = id  ?? Rx(""); }

Rx<String>? accountText;

Rx<String>? userImage;

Rx<String>? amountText;

Rx<String>? cardNumberText;

Rx<String>? cardTypeText;

Rx<String>? transferVisaText;

Rx<String>? transferCardNumberText;

Rx<String>? id;

 }
