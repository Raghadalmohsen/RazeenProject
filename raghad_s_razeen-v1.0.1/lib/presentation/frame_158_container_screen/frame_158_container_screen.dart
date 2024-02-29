// import 'package:flutter/material.dart';import 'package:raghad_s_razeen/core/app_export.dart';import 'package:raghad_s_razeen/presentation/frame_158_page/frame_158_page.dart';import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';
// // ignore_for_file: must_be_immutable
// class Frame158ContainerScreen extends StatelessWidget {Frame158ContainerScreen({Key? key}) : super(key: key);

// GlobalKey<NavigatorState> navigatorKey = GlobalKey();

// @override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50.withOpacity(0.4), body: Navigator(key: navigatorKey, initialRoute: AppRoutes.frame158Page, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomAppBar(context), floatingActionButton: CustomFloatingButton(height: 44, width: 44, child: Icon(Icons.add)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
// /// Section Widget
// Widget _buildBottomAppBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {}); } 
// ///Handling page based on route
// Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.frame158Page: return Frame158Page(); default: return Frame158Page();} } 
//  }
