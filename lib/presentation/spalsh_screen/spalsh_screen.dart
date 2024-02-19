import 'controller/spalsh_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_outlined_button.dart';
import 'package:hari_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SpalshScreen extends GetWidget<SpalshController> {
  const SpalshScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 60.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.teal100,
                theme.colorScheme.onPrimaryContainer.withOpacity(0),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 46.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgQrScannerIcon,
                  height: 140.v,
                  width: 232.h,
                ),
                SizedBox(height: 32.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_scanned_output".tr,
                    style: CustomTextStyles.headlineSmallNunitoBlack900,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildQrScanner(),
                SizedBox(height: 20.v),
                _buildFortySix(),
                SizedBox(height: 9.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildVisitNowButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildQrScanner() {
    return CustomTextFormField(
      controller: controller.qrScannerController,
      hintText: "msg_https_en_wiki".tr,
      textInputAction: TextInputAction.done,
      maxLines: 7,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildCopyButton() {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_copy".tr,
        margin: EdgeInsets.only(right: 10.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 13.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgContentcopy24px11,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShareButton() {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_share".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgShare24px11,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCopyButton(),
        _buildShareButton(),
      ],
    );
  }

  /// Section Widget
  Widget _buildVisitNowButton() {
    return CustomElevatedButton(
      height: 60.v,
      width: 240.h,
      text: "lbl_visit_now".tr,
      margin: EdgeInsets.only(
        left: 60.h,
        right: 60.h,
        bottom: 36.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 17.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLink,
          height: 29.adaptSize,
          width: 29.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueA,
      buttonTextStyle: CustomTextStyles.titleLargeNunito,
    );
  }
}
