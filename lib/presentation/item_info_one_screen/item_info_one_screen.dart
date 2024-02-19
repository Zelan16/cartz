import 'controller/item_info_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_icon_button.dart';
import 'package:hari_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ItemInfoOneScreen extends GetWidget<ItemInfoOneController> {
  const ItemInfoOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashPlkgcsboiw4,
                    height: 245.v,
                    width: 397.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 51.v),
                  _buildItemInfoOne(),
                  SizedBox(height: 3.v),
                  Container(
                    width: 156.h,
                    margin: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "msg_crunchy_beef_burger".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium14,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Row(
                      children: [
                        Container(
                          height: 56.v,
                          width: 59.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 13.v,
                          ),
                          decoration:
                              AppDecoration.outlineSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 6.v,
                            bottom: 6.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_delivery_time".tr,
                                style: CustomTextStyles.titleMediumBluegray800,
                              ),
                              Text(
                                "lbl_25_minutes".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildItemInfoTwo(),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                    height: 75.v,
                    text: "lbl_buy_now".tr,
                    margin: EdgeInsets.only(
                      left: 48.h,
                      right: 34.h,
                    ),
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle:
                        CustomTextStyles.headlineSmallRobotoOnPrimaryContainer,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 3.v,
                  width: 43.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.6),
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 43.h,
                  child: Divider(
                    indent: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 43.h,
                  child: Divider(
                    indent: 16.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItemInfoOne() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 32.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_beef_burger".tr,
                    style: CustomTextStyles.headlineLargeBluegray800,
                  ),
                  Text(
                    "msg_about_this_product".tr,
                    style: CustomTextStyles.titleMediumBluegray80018,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: CustomTextFormField(
                width: 101.h,
                controller: controller.currencyNairaNGNController,
                hintText: "lbl_3500_00".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(8.h, 19.v, -1.h, 20.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCurrencyNairaNgnPurpleA200,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 58.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 17.v,
                  right: 12.h,
                  bottom: 17.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillTealA,
                fillColor: appTheme.tealA700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildItemInfoTwo() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 42.h,
          right: 20.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFavoriteRedA200,
              height: 34.v,
              width: 44.h,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 2.v,
              ),
            ),
            SizedBox(
              height: 44.v,
              width: 139.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 21.h,
                        right: 14.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 42.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text(
                            "lbl_2".tr,
                            style: CustomTextStyles.titleLargeGray800a8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(),
                  ),
                  CustomIconButton(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    alignment: Alignment.centerLeft,
                    child: CustomImageView(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
