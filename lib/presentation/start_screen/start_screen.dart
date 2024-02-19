import 'controller/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

class StartScreen extends GetWidget<StartController> {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.tealA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 1.v,
                          width: 28.h,
                          margin: EdgeInsets.only(left: 12.h)),
                      SizedBox(height: 44.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(right: 29.h),
                              decoration: BoxDecoration(
                                  color: appTheme.deepOrange200A0,
                                  borderRadius: BorderRadius.circular(7.h)))),
                      SizedBox(height: 29.v),
                      Container(
                          height: 19.v,
                          width: 18.h,
                          margin: EdgeInsets.only(left: 60.h),
                          decoration: BoxDecoration(
                              color: appTheme.gray50,
                              borderRadius: BorderRadius.circular(9.h))),
                      SizedBox(height: 32.v),
                      _buildRecentOrders(),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_cartz".tr,
                              style: CustomTextStyles
                                  .headlineLargeOnPrimaryContainer)),
                      SizedBox(height: 3.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 171.h,
                              child: Text("msg_shop_without_the".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryContainerMedium14))),
                      Spacer(),
                      SizedBox(height: 33.v),
                      _buildUserProfile()
                    ]))));
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 2.h),
        child: Row(children: [
          SizedBox(
              height: 297.v,
              width: 291.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: EdgeInsets.only(left: 45.h, right: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 5.v),
                        decoration: AppDecoration.fillPurple.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder123),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 50.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.gray50,
                                          borderRadius:
                                              BorderRadius.circular(4.h)))),
                              SizedBox(height: 162.v),
                              Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(left: 23.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.purple10030,
                                      borderRadius: BorderRadius.circular(6.h)))
                            ]))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(right: 86.h, bottom: 44.v),
                        decoration: BoxDecoration(
                            color: appTheme.deepOrange200A0,
                            borderRadius: BorderRadius.circular(7.h)))),
                CustomImageView(
                    imagePath: ImageConstant.imgIstockphoto100,
                    height: 279.v,
                    width: 291.h,
                    alignment: Alignment.bottomCenter)
              ])),
          Container(
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(left: 3.h, top: 182.v, bottom: 105.v),
              decoration: BoxDecoration(
                  color: theme.colorScheme.onError,
                  borderRadius: BorderRadius.circular(4.h)))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Container(
        margin: EdgeInsets.only(right: 15.h),
        padding: EdgeInsets.symmetric(vertical: 17.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
              onTap: () {
                onTapTxtSignIn();
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text("lbl_sign_in".tr,
                      style: CustomTextStyles.titleLargeOutfit))),
          GestureDetector(
              onTap: () {
                onTapTxtRegister();
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text("lbl_register".tr,
                      style: CustomTextStyles.titleLargeOutfitOnPrimary)))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtSignIn() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtRegister() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
