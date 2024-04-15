import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                          _buildScreenTitle(
                          context,
                          screenTitle: "Firstpage",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.firstpage),
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "Initialscreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.initialscreen),
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "Signin",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signin),
                        ),

                                 _buildScreenTitle(
                          context,
                          screenTitle: "Signup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signup),
                        ),

                                 _buildScreenTitle(
                          context,
                          screenTitle: "forgetpass",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetpass),
                        ),

                                 _buildScreenTitle(
                          context,
                          screenTitle: "setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setting),
                        ),

                              _buildScreenTitle(
                          context,
                          screenTitle: "profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profile),
                        ),

                             _buildScreenTitle(
                          context,
                          screenTitle: "razeenmap",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.razeenmap),
                        ),

                             _buildScreenTitle(
                          context,
                          screenTitle: "requestskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestskill),
                        ),

                             _buildScreenTitle(
                          context,
                          screenTitle: "speakskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.speakskill),
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "quietplaceskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quietplaceskill),
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "respectdiffskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.respectdiffskill),
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "safeplaceskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.safeplaceskill),
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "explainmap",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.explainmap),
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "safePlaceQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.safePlaceQuiz),
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "quietplacequiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quietplacequiz),
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "respectDiffQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.respectDiffQuiz),
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "speakQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.speakQuiz),
                        ),


                         _buildScreenTitle(
                          context,
                          screenTitle: "requestQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestQuiz),
                        ),
                             _buildScreenTitle(
                          context,
                          screenTitle: "requestQuiz2",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestQuiz2),
                        ),
                             _buildScreenTitle(
                          context,
                          screenTitle: "requestQuiz3",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestQuiz3),
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "medalsFeedback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medalsFeedback),
                        ),
                              _buildScreenTitle(
                          context,
                          screenTitle: "mazeGame",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mazeGame),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "الانتقال",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                ".",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
