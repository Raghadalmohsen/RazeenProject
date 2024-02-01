import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame124Screen extends StatelessWidget {
  Frame124Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.4),
        body: SizedBox(
          height: SizeUtils.height,
          width: 394.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage65,
                height: 852.v,
                width: 394.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 45.v),
                    _buildAppBar(context),
                    SizedBox(height: 44.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 479.v,
                          width: 394.h,
                          margin: EdgeInsets.only(bottom: 190.v),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              _buildHorizontalScroll(context),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage23186x166,
                                height: 186.v,
                                width: 166.h,
                                alignment: Alignment.topRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 3.v,
      leadingWidth: 394.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 327.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 31.h,
          top: 88.v,
        ),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 391.v,
            width: 363.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 391.v,
                    width: 329.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue5066,
                      borderRadius: BorderRadius.circular(
                        35.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 73.h,
                      top: 106.v,
                      bottom: 106.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 179.v,
                          width: 186.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 179.v,
                                  width: 186.h,
                                  decoration: BoxDecoration(
                                    color: theme
                                        .colorScheme.onSecondaryContainer
                                        .withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(
                                      93.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage68,
                                height: 150.adaptSize,
                                width: 150.adaptSize,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 10.h),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage68,
                          height: 150.adaptSize,
                          width: 150.adaptSize,
                          margin: EdgeInsets.only(
                            top: 15.v,
                            bottom: 14.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 316.h,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      bottom: 17.v,
                    ),
                    decoration: AppDecoration.outlinePrimary3,
                    child: Text(
                      "أحسنت لقد أكملت الاختبار \nبطريقة صحيحة",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumBlack,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage167,
                  height: 28.v,
                  width: 27.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    top: 27.v,
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
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
