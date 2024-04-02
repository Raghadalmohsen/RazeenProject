import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/presentation/medalsFeedback.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class GameFeedback extends StatelessWidget {
  GameFeedback({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.blue50B2,
            border: Border.all(
              color: appTheme.blue5066,
              width: 1.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.blue5066.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.BackgroundHouse2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlinePrimary.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.BackgroundHouse2,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Opacity(
                  opacity: 0.6,
                ),
                SizedBox(height: 94.v),
                _buildFour(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    return SizedBox(
      height: 681.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.cloud, //
            width: 374.h,
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 100),
          ),
          CustomElevatedButton(
            width: 92.h,
            text: "موافق",

            margin: EdgeInsets.only(bottom: 265.v),
            alignment: Alignment.bottomCenter,
            onPressed: () {
                                       
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MedalsFeedback()), //next page 
              );
            },
          ),
        ],
      ),
    );
  }

}