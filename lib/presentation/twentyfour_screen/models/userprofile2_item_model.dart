import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.

class Userprofile23ItemModel {
  Userprofile23ItemModel({
    this.accountName,
    this.userImage,
    this.accountBalance,
    this.accountNumber,
    this.accountType,
    this.transferVisa,
    this.transferAccountNumber,
    this.id,
  }) {
    accountName = accountName ?? Rx("My Account");
    userImage = userImage ?? Rx(ImageConstant.imgImage2);
    accountBalance = accountBalance ?? Rx("3500.00");
    accountNumber = accountNumber ?? Rx("****3298");
    accountType = accountType ?? Rx("Digital");
    transferVisa = transferVisa ?? Rx("Transfer Visa");
    transferAccountNumber = transferAccountNumber ?? Rx("******3298");
    id = id ?? Rx("");
  }

  Rx<String>? accountName;

  Rx<String>? userImage;

  Rx<String>? accountBalance;

  Rx<String>? accountNumber;

  Rx<String>? accountType;

  Rx<String>? transferVisa;

  Rx<String>? transferAccountNumber;

  Rx<String>? id;
}
