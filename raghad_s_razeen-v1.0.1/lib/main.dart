import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';
import 'package:firebase_core/firebase_core.dart';/////////////

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
// Future<void> main() async {/////////////
void main() async {/////////////
  runApp(MyApp()); //const
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();//////////
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  // runApp(MyApp()); //مفروض اول لاين بعد المين
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'raghad_s_razeen',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.frame100Screen,//start
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
