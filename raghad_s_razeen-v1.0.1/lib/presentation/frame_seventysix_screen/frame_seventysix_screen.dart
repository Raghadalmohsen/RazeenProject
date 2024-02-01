import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class FrameSeventysixScreen extends StatelessWidget {
  FrameSeventysixScreen({Key? key})
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
          height: 633.v,
          width: 357.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage651,
                height: 633.v,
                width: 356.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 40.v),
                    SizedBox(
                      height: 446.v,
                      width: 342.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 13.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgArrow3,
                                    height: 2.v,
                                    width: 30.h,
                                    margin: EdgeInsets.only(left: 17.h),
                                  ),
                                  SizedBox(height: 53.v),
                                  Expanded(
                                    child: Container(
                                      width: 329.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 30.v),
                                      decoration: AppDecoration.outlinePrimary8
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder33,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Spacer(),
                                          Container(
                                            width: 316.h,
                                            margin: EdgeInsets.only(left: 13.h),
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "حاول مرة أخرى",
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .titleMediumBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage23186x147,
                            height: 186.v,
                            width: 147.h,
                            alignment: Alignment.topRight,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 179.v,
                              width: 186.h,
                              margin: EdgeInsets.only(
                                left: 72.h,
                                bottom: 106.v,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
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
                                    imagePath: ImageConstant.imgImage99,
                                    height: 130.adaptSize,
                                    width: 130.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 62.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildIMG(context),
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
  Widget _buildIMG(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
