import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal400,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLeftSide,
                      height: 1.v,
                      width: 28.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 33.h)),
                  SizedBox(height: 52.v),
                  Padding(
                      padding: EdgeInsets.only(left: 41.h, right: 51.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 8.v, bottom: 18.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 60.h, child: Divider()),
                                      SizedBox(height: 11.v),
                                      Container(
                                          height: 3.v,
                                          width: 50.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.black900
                                                  .withOpacity(0.6))),
                                      SizedBox(height: 13.v),
                                      SizedBox(width: 35.h, child: Divider())
                                    ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgCart,
                                height: 60.v,
                                width: 74.h,
                                onTap: () {
                                  onTapImgCart();
                                })
                          ])),
                  SizedBox(height: 176.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 147.v,
                      width: 150.h,
                      onTap: () {
                        onTapImgVector();
                      }),
                  SizedBox(height: 331.v),
                  _buildUserProfile()
                ])))));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            margin: EdgeInsets.only(left: 24.h),
            padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 16.v),
            decoration: AppDecoration.fillTealA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                      opacity: 0.85,
                      child: Padding(
                          padding: EdgeInsets.only(top: 3.v, bottom: 1.v),
                          child: Text("lbl_3_items".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer))),
                  Opacity(
                      opacity: 0.85,
                      child: Padding(
                          padding: EdgeInsets.only(top: 3.v, right: 28.h),
                          child: Text("lbl_14200_00".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer)))
                ])));
  }

  /// Navigates to the itemInfoOneScreen when the action is triggered.
  onTapImgCart() {
    Get.toNamed(
      AppRoutes.itemInfoOneScreen,
    );
  }

  /// Navigates to the scanScreen when the action is triggered.
  onTapImgVector() {
    Get.toNamed(
      AppRoutes.scanScreen,
    );
  }
}
