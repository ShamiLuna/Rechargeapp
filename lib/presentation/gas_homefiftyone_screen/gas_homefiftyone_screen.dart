import '../gas_homefiftyone_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/gas_homefiftyone_controller.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GasHomefiftyoneScreen extends GetWidget<GasHomefiftyoneController> {
  const GasHomefiftyoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19,
            vertical: 14,
          ),
          child: Column(
            children: [
              _buildFrame(),
              SizedBox(height: 17),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_search".tr,
              ),
              SizedBox(height: 13),
              _buildSearch(),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 57,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 25,
          top: 22,
          bottom: 22,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_select_your_gas".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        height: 173,
        width: 334,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1064173x334,
              height: 173,
              width: 334,
              radius: BorderRadius.circular(
                8,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage7,
              height: 173,
              width: 334,
              radius: BorderRadius.circular(
                8,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text(
            "lbl_all_billers".tr,
            style: CustomTextStyles.titleMediumGray60004,
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(right: 55),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 37,
                  );
                },
                itemCount: controller.gasHomefiftyoneModelObj.value
                    .viewhierarchyItemList.value.length,
                itemBuilder: (context, index) {
                  ViewhierarchyItemModel model = controller
                      .gasHomefiftyoneModelObj
                      .value
                      .viewhierarchyItemList
                      .value[index];
                  return ViewhierarchyItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
