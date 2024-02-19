import 'controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ScanScreen extends GetWidget<ScanController> {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal900,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
                child: Column(children: [
                  SizedBox(height: 62.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 64.h, vertical: 103.v),
                      decoration: AppDecoration.outlineBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: QrImageView(
                          data: 'https://www.google.com', size: 187.adaptSize)),
                  SizedBox(height: 60.v),
                  SizedBox(
                      width: 161.h,
                      child: Text("msg_place_the_qr_code_within".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeOnPrimaryContainer)),
                  SizedBox(height: 38.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      onTap: () {
                        onTapImgThumbsUp();
                      })
                ]))));
  }

  /// Navigates to the flashScreen when the action is triggered.
  onTapImgThumbsUp() {
    Get.toNamed(
      AppRoutes.flashScreen,
    );
  }
}
