import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/core/utils/validation_functions.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                              SizedBox(height: 87.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: 19.v,
                                      width: 18.h,
                                      margin: EdgeInsets.only(left: 61.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray100,
                                          borderRadius:
                                              BorderRadius.circular(9.h)))),
                              SizedBox(height: 4.v),
                              _buildLoginStack(),
                              SizedBox(height: 24.v),
                              _buildEmailField(),
                              SizedBox(height: 21.v),
                              _buildUserNameField(),
                              SizedBox(height: 19.v),
                              _buildPasswordField(),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildRegisterButton()));
  }

  /// Section Widget
  Widget _buildLoginStack() {
    return SizedBox(
        height: 281.v,
        width: 320.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(left: 74.h, right: 1.h, bottom: 7.v),
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 5.v),
                  decoration: AppDecoration.fillPurple.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder123),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 177.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onError,
                                    borderRadius: BorderRadius.circular(4.h)))),
                        SizedBox(height: 35.v),
                        Container(
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(left: 25.h),
                            decoration: BoxDecoration(
                                color: appTheme.purple10030,
                                borderRadius: BorderRadius.circular(6.h)))
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(right: 51.h),
                  decoration: BoxDecoration(
                      color: appTheme.deepOrange200A0,
                      borderRadius: BorderRadius.circular(7.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgLogin1,
              height: 255.v,
              width: 320.h,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: CustomTextFormField(
            controller: controller.emailFieldController,
            hintText: "lbl_email".tr,
            hintStyle: theme.textTheme.headlineSmall!,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(21.h, 13.v, 30.h, 13.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 29.v,
                    width: 28.h)),
            prefixConstraints: BoxConstraints(maxHeight: 60.v),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildUserNameField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: CustomTextFormField(
            controller: controller.userNameFieldController,
            hintText: "lbl_username".tr,
            hintStyle: theme.textTheme.headlineSmall!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(21.h, 14.v, 30.h, 14.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLockTealA700,
                    height: 26.v,
                    width: 23.h)),
            prefixConstraints: BoxConstraints(maxHeight: 60.v),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: CustomTextFormField(
            controller: controller.passwordFieldController,
            hintText: "lbl_password".tr,
            hintStyle: theme.textTheme.headlineSmall!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(21.h, 13.v, 30.h, 13.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 27.v,
                    width: 23.h)),
            prefixConstraints: BoxConstraints(maxHeight: 60.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true));
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 49.h, right: 48.h, bottom: 39.v),
        onPressed: () {
          onTapRegisterButton();
        });
  }

  /// Navigates to the registrationSuccessfulScreen when the action is triggered.
  onTapRegisterButton() {
    Get.toNamed(
      AppRoutes.registrationSuccessfulScreen,
    );
  }
}
