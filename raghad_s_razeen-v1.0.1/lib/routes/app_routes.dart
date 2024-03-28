import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:raghad_s_razeen/presentation/firstpage.dart';//
import 'package:raghad_s_razeen/presentation/initialscreen.dart';//
import 'package:raghad_s_razeen/presentation/signin.dart';//
import 'package:raghad_s_razeen/presentation/signup.dart';//
import 'package:raghad_s_razeen/presentation/forgetpass.dart';//
import 'package:raghad_s_razeen/presentation/setting.dart';//
import 'package:raghad_s_razeen/presentation/profile.dart';//
import 'package:raghad_s_razeen/presentation/razeenmap.dart';//
import 'package:raghad_s_razeen/presentation/requestskill.dart';//
import 'package:raghad_s_razeen/presentation/speakskill.dart';//
import 'package:raghad_s_razeen/presentation/quietplaceskill.dart';//
import 'package:raghad_s_razeen/presentation/respectdiffskill.dart';//
import 'package:raghad_s_razeen/presentation/safeplaceskill.dart';//
import 'package:raghad_s_razeen/presentation/medals.dart';//
import 'package:raghad_s_razeen/presentation/explainmap.dart';//
import 'package:raghad_s_razeen/presentation/sadfeedback.dart';//
import 'package:raghad_s_razeen/presentation/happyfeedback.dart';//
import 'package:raghad_s_razeen/presentation/safePlaceQuiz.dart';//2
import 'package:raghad_s_razeen/presentation/speakQuiz.dart';//3
import 'package:raghad_s_razeen/presentation/quietplacequiz.dart';//2
import 'package:raghad_s_razeen/presentation/respectDiffQuiz.dart';//4
import 'package:raghad_s_razeen/presentation/requestQuiz.dart';//4
import 'package:raghad_s_razeen/presentation/requestQuiz2.dart';//4
import 'package:raghad_s_razeen/presentation/requestQuiz3.dart';//4
import 'package:raghad_s_razeen/presentation/medalsFeedback.dart';//4
import 'package:raghad_s_razeen/presentation/mazeGame.dart';//4
import 'package:raghad_s_razeen/presentation/speakgame.dart';//4
import 'package:raghad_s_razeen/presentation/safeplaceAR.dart';//4
import 'package:raghad_s_razeen/presentation/safeplacestory.dart';//4
import 'package:raghad_s_razeen/presentation/memoryGame.dart';
import 'package:raghad_s_razeen/presentation/gameFeedback.dart';
import 'package:raghad_s_razeen/presentation/speakQuizq1.dart';
import 'package:raghad_s_razeen/presentation/speakQuizq2.dart';

class AppRoutes {
   static const String firstpage = '/firstpage';//
   static const String initialscreen = '/initialscreen';//
   static const String signin = '/signin';//
   static const String signup ='/signup';//4
   static const String forgetpass = '/forgetpass';//
   static const String setting = '/setting';//
   static const String profile = '/profile';//
   static const String razeenmap = '/razeenmap';//
   static const String requestskill = '/requestskill';//
   static const String speakskill = '/speakskill';//
   static const String quietplaceskill = '/quietplaceskill';//
   static const String respectdiffskill = '/respectdiffskill';//
   static const String safeplaceskill = '/safeplaceskill';//
   static const String medals = '/medals';//
   static const String explainmap = '/explainmap';//
   static const String sadfeedback = '/sadfeedback';//
   static const String happyfeedback = '/happyfeedback';//
   static const String safePlaceQuiz = '/safePlaceQuiz';//2
   static const String speakQuiz = '/speakQuiz';//3
   static const String quietplacequiz = '/quietplacequiz';//2
   static const String respectDiffQuiz= '/respectDiffQuiz';//4
   static const String requestQuiz ='/requestQuiz';//4
   static const String requestQuiz2 ='/requestQuiz2';//4
   static const String requestQuiz3 ='/requestQuiz3';//4
   static const String medalsFeedback ='/medalsFeedback';//4
   static const String mazeGame ='/mazeGame';//4
   static const String speakgame ='/speakgame';//4
   static const String safeplaceAR ='/safeplaceAR';//4
   static const String safeplacestory ='/safeplacestory';//4
   static const String memoryGame = '/memoryGame';//4
   static const String appNavigationScreen = '/app_navigation_screen';
   static const String gameFeedback = '/gameFeedback';
   static const String speakQuizq1 = '/speakQuizq1';
   static const String speakQuizq2 = '/speakQuizq2';
  

  static Map<String, WidgetBuilder> routes = {
    firstpage:(context) => Firstpage(),//
    initialscreen:(context) => Initialscreen(),//
    signin:(context) => Signin(),
    signup:(context) => Signup(),//
    forgetpass:(context) => Forgetpass(),//
    setting:(context) => Setting(),//
    profile:(context) => Profile(),
    razeenmap:(context) => Razeenmap(),
    requestskill:(context) => Requestskill(request:'request'),///////////////new
    speakskill:(context) => Speakskill(speak:'speak'),////////////new
    quietplaceskill:(context) => Quietplaceskill(quiet:'quiet'),/////////////////new
    respectdiffskill:(context) => Respectdiffskill(respectdiff:'respectdiff'),/////////new
    safeplaceskill:(context) => Safeplaceskill( safeplace: 'safeplace',), ///////////////////////////////////new
    medals:(context) => Medals(),
    explainmap:(context) => Explainmap(),
    sadfeedback:(context) => Sadfeedback(),
    happyfeedback:(context) => Happyfeedback(),
    safePlaceQuiz:(context) => SafePlaceQuiz(),//2
    speakQuiz:(context) => SpeakQuiz(correctAnswersCount: correctAnswersCount,),//3
    quietplacequiz:(context) => Quietplacequiz(),
    respectDiffQuiz:(context) => RespectDiffQuiz(),//4
    medalsFeedback:(context) => MedalsFeedback(),//4
    requestQuiz:(context) => RequestQuiz(),
    requestQuiz2:(context) => RequestQuiz2(),
    requestQuiz3:(context) => RequestQuiz3(),
    mazeGame:(context) => MazeGame(),
    speakgame:(context) => Speakgame(),
    safeplaceAR:(context) => SafePlaceAR(),
    safeplacestory:(context) => Safeplacestory(),
    memoryGame:(context) => MemoryGame(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    gameFeedback: (context) => GameFeedback(),
    speakQuizq1: (context) => SpeakQuizq1(),
    speakQuizq2: (context) => SpeakQuizq2(correctAnswersCount: correctAnswersCount,),
    
  };
  
  static get correctAnswersCount => correctAnswersCount;
}
