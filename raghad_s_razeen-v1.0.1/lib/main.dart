import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';
import 'package:firebase_core/firebase_core.dart';/////////////

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {/////////////
  runApp(MyApp()); //const
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();//////////
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);

  ThemeHelper().changeTheme('primary');
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
          initialRoute: AppRoutes.firstpage,//start//
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
