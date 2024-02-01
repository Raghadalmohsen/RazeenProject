import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Frame154Dialog extends StatelessWidget {
  const Frame154Dialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318.h,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBlueB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage164,
            height: 28.v,
            width: 27.h,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 36.v),
          Container(
            width: 267.h,
            decoration: AppDecoration.outlinePrimary3,
            child: Text(
              " قم بتصنيف الأشياء التي تنتمي الى رزين أو جده",
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 33.v),
          CustomElevatedButton(
            width: 92.h,
            text: "موافق",
          ),
        ],
      ),
    );
  }
}
