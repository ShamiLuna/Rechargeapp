import '../controller/frame_33729_controller.dart';
import '../models/cart_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(
    this.cartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartItemModel cartItemModelObj;

  var controller = Get.find<Frame33729Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 4,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 35,
                width: 35,
                padding: EdgeInsets.all(6),
                decoration: IconButtonStyleHelper.fillRed,
                child: CustomImageView(
                  imagePath: cartItemModelObj.cartIcon!.value,
                ),
              ),
            ),
          ),
          Container(
            width: 203,
            margin: EdgeInsets.only(left: 14),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_shopping".tr,
                    style: CustomTextStyles.titleSmallffa456f6,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "msg_you_shop_for_shoes".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
