import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

// ignore: must_be_immutable
class Grid1ItemWidget extends StatelessWidget {
  const Grid1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.v,
      width: 94.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 94.adaptSize,
              width: 94.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.onSecondaryContainer.withOpacity(0.5),
                borderRadius: BorderRadius.circular(
                  47.h,
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
            alignment: Alignment.center,
            child: SizedBox(
              height: 94.v,
              width: 52.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImg08033,
                    height: 94.v,
                    width: 52.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 29.v,
                      width: 26.h,
                      margin: EdgeInsets.only(bottom: 11.v),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 29.v,
                              width: 26.h,
                              decoration: BoxDecoration(
                                color: appTheme.amberA100,
                                borderRadius: BorderRadius.circular(
                                  14.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage174,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.topCenter,
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
    );
  }
}
