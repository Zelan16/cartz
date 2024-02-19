import 'controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NavDraweritem extends StatelessWidget {
  NavDraweritem(this.controller, {Key? key}) : super(key: key);

  NavController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 14.v),
                      Row(children: [
                        CustomElevatedButton(
                            height: 44.v,
                            width: 44.h,
                            text: "lbl_ad".tr,
                            buttonStyle: CustomButtonStyles.fillTealA,
                            buttonTextStyle: CustomTextStyles
                                .titleMediumOpenSansOnPrimaryContainer),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_animateddre".tr,
                                      style: CustomTextStyles
                                          .titleMediumOpenSansGray90002),
                                  SizedBox(height: 1.v),
                                  Text("msg_justdre_dummy_com".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOpenSansErrorContainer)
                                ]))
                      ]),
                      SizedBox(height: 92.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("lbl_home".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIconErrorcontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("lbl_recent_orders".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUserErrorcontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("lbl_addresses".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconErrorcontainer24x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("lbl_notifications".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLinkedin,
                                height: 24.v,
                                width: 18.h),
                            Padding(
                                padding: EdgeInsets.only(left: 18.h),
                                child: Text("lbl_location".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 45.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgOffer,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("lbl_settings".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 106.v),
                      GestureDetector(
                          onTap: () {
                            onTapContent();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbsUpErrorcontainer,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 1.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 3.v),
                                    child: Text("lbl_logout".tr,
                                        style: CustomTextStyles
                                            .titleMediumOpenSans))
                              ])))
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapContent() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
