import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.accountText, this.userImage, this.amountText, this.cardNumberText, this.cardTypeText, this.transferVisaText, this.cardNumberText1, this.id, }) { accountText = accountText  ?? Rx("My Account");userImage = userImage  ?? Rx(ImageConstant.imgImage2);amountText = amountText  ?? Rx("3500.00");cardNumberText = cardNumberText  ?? Rx("****3298");cardTypeText = cardTypeText  ?? Rx("Digital");transferVisaText = transferVisaText  ?? Rx("Transfer Visa");cardNumberText1 = cardNumberText1  ?? Rx("******3298");id = id  ?? Rx(""); }

Rx<String>? accountText;

Rx<String>? userImage;

Rx<String>? amountText;

Rx<String>? cardNumberText;

Rx<String>? cardTypeText;

Rx<String>? transferVisaText;

Rx<String>? cardNumberText1;

Rx<String>? id;

 }
