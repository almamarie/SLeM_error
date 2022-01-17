import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 90.h,
              ),
              Image.asset('assets/backgrounds/slem logo cropped 1.png'),
              Text(
                'SLEM',
                style: TextStyle(fontSize: 33.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Image.asset('assets/backgrounds/background.png'),
            ],
          ),
        ],
      )),
    );
  }
}
