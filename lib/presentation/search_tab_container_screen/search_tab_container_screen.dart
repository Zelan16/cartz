import 'controller/search_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/search_page/search_page.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_search_view.dart';

class SearchTabContainerScreen extends GetWidget<SearchTabContainerController> {
  const SearchTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.tealA700,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 50.h, right: 47.h),
                          child: CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_search".tr)),
                      SizedBox(height: 43.v),
                      Container(
                          height: 32.v,
                          width: 333.h,
                          margin: EdgeInsets.only(left: 39.h),
                          child: TabBar(
                              controller: controller.tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              labelStyle: TextStyle(
                                  fontSize: 18.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400),
                              unselectedLabelColor: appTheme.lime900A0,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 18.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400),
                              indicatorPadding: EdgeInsets.all(2.0.h),
                              indicator: BoxDecoration(
                                  color: appTheme.gray50.withOpacity(0.47),
                                  borderRadius: BorderRadius.circular(14.h)),
                              tabs: [
                                Tab(child: Text("lbl_all".tr)),
                                Tab(child: Text("lbl_pizza".tr)),
                                Tab(child: Text("lbl_steaks".tr))
                              ])),
                      SizedBox(
                          height: 630.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                SearchPage(),
                                SearchPage(),
                                SearchPage()
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 42.h),
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 4.v,
                      width: 35.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          borderRadius: BorderRadius.circular(2.h)))),
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 4.v,
                      width: 35.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          borderRadius: BorderRadius.circular(2.h)))),
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 4.v,
                      width: 23.h,
                      margin: EdgeInsets.only(right: 12.h),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          borderRadius: BorderRadius.circular(2.h))))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCartOnprimarycontainer,
              margin: EdgeInsets.symmetric(horizontal: 39.h, vertical: 17.v),
              onTap: () {
                onTapCart();
              })
        ]);
  }

  /// Navigates to the itemInfoOneScreen when the action is triggered.
  onTapCart() {
    Get.toNamed(
      AppRoutes.itemInfoOneScreen,
    );
  }
}
