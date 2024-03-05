import 'package:faz/auth_controller.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/four_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FourScreen extends GetWidget<FourController> {
  FourScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  dynamic storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 395,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 10),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: 900,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 21, vertical: 19),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 771,
                                                width: 333,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray90001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32)))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 29,
                                                    right: 29,
                                                    bottom: 53),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _buildEmailFloatingTextField(),
                                                      SizedBox(height: 27),
                                                      _buildNameFloatingTextField(),
                                                      SizedBox(height: 24),
                                                      _buildPasswordFloatingTextField(),
                                                      SizedBox(height: 20),
                                                      _buildContinueButton(),
                                                SizedBox(height: 20),
                                                CustomElevatedButton(
                                            text: "Continue As Guest".tr.toUpperCase(),
                                            buttonTextStyle: CustomTextStyles.titleSmallRoboto,
                                            onPressed: () {
                                                  eight();
                                            }),
                                                      SizedBox(height: 100),

                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 75,
                                                    top: 55,
                                                    right: 78),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("Login".tr,
                                                          style: CustomTextStyles
                                                              .titleLargeRobotoPrimary),
                                                      SizedBox(height: 14),
                                                      SizedBox(
                                                          width: 178,
                                                          child: Text(
                                                              "msg_set_a_name_for_your"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .bodySmallRobotoWhiteA700Light_1))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 108,
                                            width: 108,
                                            alignment: Alignment.topCenter,
                                            margin:
                                                EdgeInsets.only(top: 155)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 112,
                                                    top: 153,
                                                    right: 115),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 30),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup764),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 34),
                                                      Container(
                                                          height: 18,
                                                          width: 18,
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onError,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          9)))
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildEmailFloatingTextField() {
    return  TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller.emailFloatingTextFieldController,
      decoration: InputDecoration(
        labelText: "Email",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email),
      ),
      validator: (value){
        bool emailvalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
        if(value!.isEmpty){
          return "Enter Email";
        }

        else if(!emailvalid){
          return "Enter Valid Email";
        }

      },
    );

      // CustomFloatingTextField(
      //
      //   controller: controller.emailFloatingTextFieldController,
      //   labelText: "lbl_email".tr,
      //   labelStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
      //   hintText: "lbl_email".tr,
      //   hintStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
      //   textInputType: TextInputType.emailAddress,
      //   validator: (value) {
      //     if (value == null || (!isValidEmail(value, isRequired: true))) {
      //       return "err_msg_please_enter_valid_email".tr;
      //     }
      //     return null;
      //   },
      //
      //   contentPadding: EdgeInsets.fromLTRB(26, 19, 26, 21));
  }

  /// Section Widget
  Widget _buildNameFloatingTextField() {
    return
      TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: controller.nameFloatingTextFieldController,
          decoration: InputDecoration(
            labelText: "Name",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          )
      );
      // CustomFloatingTextField(
      //   controller: controller.nameFloatingTextFieldController,
      //   labelText: "lbl_name".tr,
      //   labelStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
      //   hintText: "lbl_name".tr,
      //   hintStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
      //   validator: (value) {
      //     if (!isText(value)) {
      //       return "err_msg_please_enter_valid_text".tr;
      //     }
      //     return null;
      //   },
      //   contentPadding: EdgeInsets.symmetric(horizontal: 26, vertical: 20));
  }

  /// Section Widget
  Widget _buildPasswordFloatingTextField() {
    return
      Obx(()=> TextFormField(
        obscureText: controller.isShowPassword.value,
        keyboardType: TextInputType.emailAddress,
        controller: controller.passwordFloatingTextFieldController,
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.lock),
          suffix: InkWell(
            child: Icon(controller.isShowPassword.value?Icons.visibility: Icons.visibility_off),
            onTap: (){
              controller.isShowPassword.value=!controller.isShowPassword.value;
            },
          ),
        ),
        validator: (value){
          if (value!.isEmpty){
            return "Enter Password";
          }
          else if(controller.passwordFloatingTextFieldController.text.length<6){
            return "Password Length Should be more than 6 characters";
          }
        },
      ));
    //   Obx(() => TextFormField(
    //     controller: controller.passwordFloatingTextFieldController,
    //
    //      // labelText: "lbl_password".tr,
    //     // labelStyle: CustomTextStyles.bodySmallWhiteA700,
    //     // hintText: "lbl_password".tr,
    //     // hintStyle: CustomTextStyles.bodySmallWhiteA700,
    //     textInputAction: TextInputAction.done,
    //     // textInputType: TextInputType.visiblePassword,
    //     obscureText: controller.isShowPassword.value,
    //     // prefix: Container(width: 5),
    //     // prefixConstraints: BoxConstraints(maxHeight: 68),
    //     // suffix: InkWell(
    //     //     onTap: () {
    //     //       controller.isShowPassword.value =
    //     //           !controller.isShowPassword.value;
    //     //     },
    //     //     child: Container(
    //     //         margin: EdgeInsets.symmetric(horizontal: 18),
    //     //         child: CustomImageView(
    //     //             imagePath: ImageConstant.imgUserWhiteA70013x20,
    //     //             height: 13,
    //     //             width: 20))),
    //     // suffixConstraints: BoxConstraints(maxHeight: 68),
    //     validator: (value) {
    //       if (value == null || (!isValidPassword(value, isRequired: true))) {
    //         return "err_msg_please_enter_valid_password".tr;
    //       }
    //       return null;
    //     },
    //     // contentPadding: EdgeInsets.fromLTRB(26, -10, 26, 50)
    // ));
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
        text: "lbl_continue".tr.toUpperCase(),
        buttonTextStyle: CustomTextStyles.titleSmallRoboto,
        onPressed: () {

          AuthController.instance.register(controller.emailFloatingTextFieldController.text.trim(), controller.passwordFloatingTextFieldController.text.trim());
          // print("The Email is ${storage.read("email")}");
          if (_formKey.currentState!.validate()){
            print("Success Data added");
            controller.emailFloatingTextFieldController.clear();
            controller.nameFloatingTextFieldController.clear();
            return;

          }
          _formKey.currentState!.save();

        });
  }

  /// Navigates to the fiveScreen when the action is triggered.
  n5() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );
  }
  eight() {
    Get.offNamed(AppRoutes.eightScreen);
  }
}
