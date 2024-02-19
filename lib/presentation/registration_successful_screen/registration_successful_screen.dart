import 'controller/registration_successful_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

class RegistrationSuccessfulScreen
    extends GetWidget<RegistrationSuccessfulController> {
  const RegistrationSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.tealA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 1.v,
                          width: 28.h,
                          margin: EdgeInsets.only(left: 9.h)),
                      SizedBox(height: 44.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(right: 26.h),
                              decoration: BoxDecoration(
                                  color: appTheme.deepOrange200A0,
                                  borderRadius: BorderRadius.circular(7.h)))),
                      SizedBox(height: 29.v),
                      Container(
                          height: 19.v,
                          width: 18.h,
                          margin: EdgeInsets.only(left: 58.h),
                          decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(9.h))),
                      SizedBox(height: 23.v),
                      _buildEightyOneStack(),
                      SizedBox(height: 67.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_registration".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_complete".tr,
                              style: theme.textTheme.headlineLarge))
                    ])),
            bottomNavigationBar: _buildContinueButton()));
  }

  /// Section Widget
  Widget _buildEightyOneStack() {
    return Container(
        height: 315.v,
        width: 311.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(bottom: 114.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onError,
                      borderRadius: BorderRadius.circular(4.h)))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(right: 97.h, bottom: 53.v),
                  decoration: BoxDecoration(
                      color: appTheme.deepOrange200A0,
                      borderRadius: BorderRadius.circular(7.h)))),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  margin: EdgeInsets.only(top: 65.v, right: 31.h),
                  decoration: BoxDecoration(
                      color: appTheme.gray50,
                      borderRadius: BorderRadius.circular(4.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgShoppingHighQualityPng,
              height: 315.v,
              width: 310.h,
              radius: BorderRadius.circular(34.h),
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 48.h, right: 49.h, bottom: 45.v),
        onPressed: () {
          onTapContinueButton();
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapContinueButton() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
