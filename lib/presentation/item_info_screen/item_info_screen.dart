import 'controller/item_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ItemInfoScreen extends GetWidget<ItemInfoController> {
  const ItemInfoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 65.v),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 55.h,
                  right: 61.h,
                  bottom: 5.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 23.v,
                        bottom: 48.v,
                      ),
                      child: Text(
                        "lbl_payment_method".tr,
                        style: CustomTextStyles.titleLargeRobotoGray800,
                      ),
                    ),
                    Container(
                      height: 98.v,
                      width: 77.h,
                      margin: EdgeInsets.only(left: 36.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIstockphoto100,
                            height: 74.v,
                            width: 77.h,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "lbl_cartz".tr,
                              style: CustomTextStyles.titleLargeGray300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
