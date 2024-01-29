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
            horizontal: 19.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              _buildFrame(),
              SizedBox(height: 17.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_search".tr,
              ),
              SizedBox(height: 13.v),
              _buildSearch(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 22.v,
          bottom: 22.v,
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
        height: 173.v,
        width: 334.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1064173x334,
              height: 173.v,
              width: 334.h,
              radius: BorderRadius.circular(
                8.h,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage7,
              height: 173.v,
              width: 334.h,
              radius: BorderRadius.circular(
                8.h,
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
      padding: EdgeInsets.symmetric(horizontal: 36.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.v),
          Text(
            "lbl_all_billers".tr,
            style: CustomTextStyles.titleMediumGray60004,
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 37.v,
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
