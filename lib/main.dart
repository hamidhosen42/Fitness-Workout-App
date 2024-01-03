import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/colo_extension.dart';
import 'view/login/complete_profile_view.dart';
import 'view/main_tab/main_tab_view.dart';
import 'view/on_boarding/started_view.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          title: 'Fitness',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: TColor.primaryColor1, fontFamily: "Poppins"),
          home: const CompleteProfileView(),
          // home: const MainTabView(),
        );
      },
    );
  }
}