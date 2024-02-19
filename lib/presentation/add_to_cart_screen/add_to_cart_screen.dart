import 'controller/add_to_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AddToCartScreen extends GetWidget<AddToCartController> {
  const AddToCartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 383.h,
          padding: EdgeInsets.symmetric(
            horizontal: 36.h,
            vertical: 45.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.v),
              Text(
                "lbl_add_to_cart".tr,
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 31.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 30.v,
                        width: 40.h,
                        margin: EdgeInsets.only(bottom: 22.v),
                      ),
                      Container(
                        height: 37.v,
                        width: 121.h,
                        margin: EdgeInsets.only(
                          left: 53.h,
                          top: 15.v,
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 15.h,
                                  right: 19.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 37.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles.titleLargeGray800a8,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 37.v,
                              width: 38.h,
                              alignment: Alignment.centerRight,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgContrast,
                              height: 37.v,
                              width: 38.h,
                              alignment: Alignment.centerLeft,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 73.v),
              _buildAddToCartRow(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartRow() {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineTealA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.85,
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_2_items".tr,
                style: CustomTextStyles.titleSmallBluegray400,
              ),
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.85,
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 16.v,
              width: 19.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 5.v,
              ),
            ),
          ),
          Opacity(
            opacity: 0.85,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                "lbl_7000_00".tr,
                style: CustomTextStyles.titleSmallGray500a7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
