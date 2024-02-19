import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/core/utils/validation_functions.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.teal400,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 20.h),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 1.v,
                                  width: 28.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 13.h)),
                              SizedBox(height: 71.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 37.h, right: 3.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                                height: 306.v,
                                                width: 245.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          13.h,
                                                                      vertical:
                                                                          22.v),
                                                              decoration: AppDecoration
                                                                  .fillPurple
                                                                  .copyWith(
                                                                      borderRadius: BorderRadiusStyle
                                                                          .circleBorder123),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    SizedBox(
                                                                        height:
                                                                            188.v),
                                                                    Container(
                                                                        height: 14
                                                                            .adaptSize,
                                                                        width: 14
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.deepOrange200A0,
                                                                            borderRadius: BorderRadius.circular(7.h)))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height: 19.v,
                                                              width: 18.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          24.h,
                                                                      top:
                                                                          15.v),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .blueGray100,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              9.h)))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgHumaaan10,
                                                          height: 259.v,
                                                          width: 151.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ])),
                                            Container(
                                                height: 8.adaptSize,
                                                width: 8.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 26.h,
                                                    top: 250.v,
                                                    bottom: 47.v),
                                                decoration: BoxDecoration(
                                                    color: theme
                                                        .colorScheme.onError,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.h)))
                                          ]))),
                              SizedBox(height: 1.v),
                              Text("lbl_welcome_back".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 33.v),
                              _buildLoginForm(),
                              SizedBox(height: 15.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.h),
                                  child: Obx(() => CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "lbl_password".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray700,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              26.h, 15.v, 30.h, 15.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLocation,
                                              height: 21.v,
                                              width: 18.h)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 60.v),
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 21.v, 23.h, 22.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 15.v,
                                                  width: 20.h))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 60.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 18.v),
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineBlackTL15))),
                              SizedBox(height: 16.v),
                              _buildActionButtons(),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildLogin()));
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return SizedBox(
        height: 60.v,
        width: 300.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgLockTealA700,
              height: 26.v,
              width: 23.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 23.h)),
          CustomTextFormField(
              width: 300.h,
              controller: controller.userNameController,
              hintText: "msg_username_email".tr,
              hintStyle: CustomTextStyles.titleSmallGray700,
              textInputType: TextInputType.emailAddress,
              alignment: Alignment.center,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(25.h, 15.v, 30.h, 15.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLockTealA700,
                      height: 22.v,
                      width: 20.h)),
              prefixConstraints: BoxConstraints(maxHeight: 60.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
              borderDecoration: TextFormFieldStyleHelper.outlineBlackTL15)
        ]));
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapTxtSignUp();
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text("lbl_sign_up".tr,
                      style: CustomTextStyles
                          .titleSmallOnPrimaryContainerMedium))),
          Text("msg_forgot_password".tr,
              style: CustomTextStyles.titleSmallGray90001)
        ]));
  }

  /// Section Widget
  Widget _buildLogin() {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        margin: EdgeInsets.only(left: 48.h, right: 49.h, bottom: 53.v),
        onPressed: () {
          onTapLogin();
        });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
