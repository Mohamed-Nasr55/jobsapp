import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/features/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: Size(375, 812),
      minTextAdapt: true,

      child: MaterialApp(
        theme: ThemeData(
          dividerTheme: DividerThemeData(color: Colors.transparent),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Jobs App',
        home: OnboardingScreen(),
      ),
    );
  }
}
