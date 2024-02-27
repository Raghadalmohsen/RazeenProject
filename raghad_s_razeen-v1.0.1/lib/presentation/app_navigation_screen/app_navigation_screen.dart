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
                              context, AppRoutes.firstpage),//
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "Initialscreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.initialscreen),//
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "Signin",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signin),//
                        ),

                                 _buildScreenTitle(
                          context,
                          screenTitle: "Signup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signup),//
                        ),

                                 _buildScreenTitle(
                          context,
                          screenTitle: "forgetpass",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetpass),//
                        ),

                                 _buildScreenTitle(
                          context,
                          screenTitle: "setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setting),//
                        ),

                              _buildScreenTitle(
                          context,
                          screenTitle: "profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profile),//
                        ),

                             _buildScreenTitle(
                          context,
                          screenTitle: "razeenmap",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.razeenmap),//
                        ),

                             _buildScreenTitle(
                          context,
                          screenTitle: "requestskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestskill),//
                        ),

                             _buildScreenTitle(
                          context,
                          screenTitle: "speakskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.speakskill),//
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "quietplaceskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quietplaceskill),//
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "respectdiffskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.respectdiffskill),//
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "safeplaceskill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.safeplaceskill),//
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "explainmap",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.explainmap),//
                        ),

                            _buildScreenTitle(
                          context,
                          screenTitle: "sadfeedback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sadfeedback),//
                        ),

                        _buildScreenTitle(
                          context,
                          screenTitle: "happyfeedback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.happyfeedback),//
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "safePlaceQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.safePlaceQuiz),//
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "quietplacequiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quietplacequiz),//
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "respectDiffQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.respectDiffQuiz),//
                        ),
                           _buildScreenTitle(
                          context,
                          screenTitle: "speakQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.speakQuiz),//
                        ),


                         _buildScreenTitle(
                          context,
                          screenTitle: "requestQuiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestQuiz),//
                        ),
                             _buildScreenTitle(
                          context,
                          screenTitle: "requestQuiz2",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestQuiz2),//
                        ),
                             _buildScreenTitle(
                          context,
                          screenTitle: "requestQuiz2",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestQuiz2),//
                        ),

                           _buildScreenTitle(
                          context,
                          screenTitle: "medalsFeedback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medalsFeedback),//
                        ),












                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 135",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame135Screen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 134",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame134Screen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame ThirtyFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameThirtyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame FortyNine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFortynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame FortyEight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFortyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 137",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame137Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 136",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame136Screen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 133",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame133Screen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 158 - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame158ContainerScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 164",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame164Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 100",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame100Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 103",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame103Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 104",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame104Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 105",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame105Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 106",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame106Screen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 112",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame112Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 110",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame110Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 113",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame113Screen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 120",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame120Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 121",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame121Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 107",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame107Screen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 108",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame108Screen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 139",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame139Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 138",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame138Screen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 130",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame130Screen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 146",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame146Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 144",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame144Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 116",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame116Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 122",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame122Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 123",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame123Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 152",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame152Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 156",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame156Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 141",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame141Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 140",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame140Screen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame 131",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frame131Screen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 159",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame159Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 117",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame117Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 124",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame124Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 125",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame125Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 153",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame153Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 157",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame157Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 143",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame143Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 142",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame142Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 132",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame132Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 118",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame118Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 126",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame126Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 127",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame127Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 119",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame119Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 128",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame128Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 129",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame129Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame FortyFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFortyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame NinetyThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameNinetythreeScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Eighteen",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEighteenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame SixtyNine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameSixtynineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame EightySix",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEightysixScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtyNine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtynineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtyEight",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtyeightScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtySeven",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtysevenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame EightyFive",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEightyfiveScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame EightyOne",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEightyoneScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame NinetyNine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetynineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame NinetyEight",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetyeightScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame NinetySeven",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetysevenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Five",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameFiveScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Eight",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEightScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Nine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Fourteen",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameFourteenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Fifteen",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameFifteenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame SixtyTwo",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameSixtytwoScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame FiftyNine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameFiftynineScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame SeventySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameSeventysixScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame EightySeven",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEightysevenScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame Ninety",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetyScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame EightyNine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameEightynineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame NinetySix",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetysixScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame NinetyFive",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetyfiveScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame NinetyFour",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameNinetyfourScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtyThree",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtythreeScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame TwentyNine",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameTwentynineScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtyTwo",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtytwoScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtySix",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtysixScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Frame ThirtyFive",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.frameThirtyfiveScreen),
                        // ),
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

  /// Section Widget
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
                "App Navigation",
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
                "Check your app's UI from the below demo screens of your app.",
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

  /// Common widget
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

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
