import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_level_monitor/screens/home/welcome_screen.dart';
import 'package:smart_level_monitor/screens/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        home: WelcomeScreen(),
      ),
      designSize: const Size(428, 926),
    );
  }
}
