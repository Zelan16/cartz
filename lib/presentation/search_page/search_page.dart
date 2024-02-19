import 'controller/search_controller.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:hari_s_application3/core/app_export.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.tealA700,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                SizedBox(
                  height: 611.v,
                  width: 434.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildGrilledBeefSection(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 33.h),
                          decoration: AppDecoration.fillGrayE.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder50,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 152.v),
                              _buildFrameTwelveSection(),
                              SizedBox(height: 21.v),
                              _buildFrameTwelveSection1(),
                              SizedBox(height: 102.v),
                              SizedBox(
                                width: 190.h,
                                child: Divider(
                                  color: appTheme.deepOrange200A0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGrilledBeefSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 37.h,
          right: 34.h,
          bottom: 459.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 21.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_grilled_beef".tr,
                      style: CustomTextStyles.bodyLargePoppinsPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    width: 141.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "msg_spicy_grilled_beef".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildMeatBallsSection(
                    image: ImageConstant.imgCurrencyNairaNgn,
                    text: "lbl_4000_00".tr,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashUc0hzduitwy,
              height: 78.v,
              width: 116.h,
              margin: EdgeInsets.only(
                top: 32.v,
                bottom: 12.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3.h, 5.v, 7.h, 97.v),
              child: _buildSteakSection(
                favoriteImage1: ImageConstant.imgFavorite,
                favoriteImage2: ImageConstant.imgFavoriteRedA200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwelveSection() {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 19.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_meat_balls".tr,
                    style: CustomTextStyles.bodyLargePoppinsPrimaryContainer,
                  ),
                ),
                SizedBox(height: 7.v),
                Container(
                  width: 133.h,
                  margin: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_flavoured_meatballs".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 3.v),
                _buildMeatBallsSection(
                  image: ImageConstant.imgCurrencyNairaNgn,
                  text: "lbl_4000_00".tr,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashOfismyezpny,
            height: 78.v,
            width: 116.h,
            margin: EdgeInsets.only(
              top: 32.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(7.h, 2.v, 3.h, 98.v),
            child: _buildSteakSection(
              favoriteImage1: ImageConstant.imgFavoriteSecondarycontainer,
              favoriteImage2: ImageConstant.imgFavoriteSecondarycontainer16x21,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwelveSection1() {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_steak".tr,
                          style:
                              CustomTextStyles.bodyLargePoppinsPrimaryContainer,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Container(
                        width: 140.h,
                        margin: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "msg_barbeques_steak".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      _buildMeatBallsSection(
                        image: ImageConstant.imgCurrencyNairaNgnTealA700,
                        text: "lbl_4000_00".tr,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashAuibtacsh6e,
                    height: 78.v,
                    width: 116.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 2.v,
              bottom: 100.v,
            ),
            child: _buildSteakSection(
              favoriteImage1: ImageConstant.imgFavoriteSecondarycontainer,
              favoriteImage2: ImageConstant.imgFavoriteSecondarycontainer16x21,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMeatBallsSection({
    required String image,
    required String text,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image,
          height: 19.v,
          width: 21.h,
          margin: EdgeInsets.only(
            top: 2.v,
            bottom: 1.v,
          ),
        ),
        Text(
          text,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.tealA700,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSteakSection({
    required String favoriteImage1,
    required String favoriteImage2,
  }) {
    return SizedBox(
      height: 20.v,
      width: 24.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: favoriteImage1,
            height: 20.v,
            width: 24.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: favoriteImage2,
            height: 16.v,
            width: 21.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
