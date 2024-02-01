import '../frame_159_screen/widgets/grid2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame159Screen extends StatelessWidget {
  Frame159Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.4),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 394.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 734.v,
                    width: 375.h,
                    margin: EdgeInsets.only(right: 19.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(left: 23.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup178,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 89.v,
                                    width: 221.h,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "إنجازاتك",
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPodium1,
                                          height: 75.adaptSize,
                                          width: 75.adaptSize,
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 19.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 46.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary6.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder33,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 41.v),
                                      _buildGrid(context),
                                      SizedBox(height: 21.v),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 96.v,
                                              width: 94.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 3.v),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      height: 94.adaptSize,
                                                      width: 94.adaptSize,
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onSecondaryContainer
                                                            .withOpacity(0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          47.h,
                                                        ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
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
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 94.v,
                                                      width: 52.h,
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImg08033,
                                                            height: 94.v,
                                                            width: 52.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                              height: 29.v,
                                                              width: 26.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          15.v),
                                                              child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          29.v,
                                                                      width:
                                                                          26.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: appTheme
                                                                            .amberA100,
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          14.h,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage174,
                                                                    height: 20
                                                                        .adaptSize,
                                                                    width: 20
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    margin: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 97.v,
                                              width: 94.h,
                                              child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      height: 94.adaptSize,
                                                      width: 94.adaptSize,
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onSecondaryContainer
                                                            .withOpacity(0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          47.h,
                                                        ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
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
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: SizedBox(
                                                      height: 94.v,
                                                      width: 52.h,
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImg08033,
                                                            height: 94.v,
                                                            width: 52.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                              height: 30.v,
                                                              width: 26.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          11.v),
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          29.v,
                                                                      width:
                                                                          26.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: appTheme
                                                                            .amberA100,
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          14.h,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage174,
                                                                    height: 20
                                                                        .adaptSize,
                                                                    width: 20
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                  ),
                                                                ],
                                                              ),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOutput13,
                          height: 134.v,
                          width: 128.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFireworks4110x107,
                          height: 110.v,
                          width: 107.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 70.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage23,
                          height: 110.v,
                          width: 109.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 70.v),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 44,
          width: 44,
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
      leadingWidth: 394.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.fromLTRB(37.h, 26.v, 327.h, 26.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 95.v,
          crossAxisCount: 2,
          mainAxisSpacing: 92.h,
          crossAxisSpacing: 92.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Grid2ItemWidget();
        },
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
