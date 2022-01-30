import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_level_monitor/services/auth.dart';
import 'package:smart_level_monitor/shared/text_decoration.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/background login.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Stack(
            children: [
              Container(
                height: 452.h,
                width: 352.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 40.w, top: 14.h),
                  child: Form(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  width: 68.w,
                                  height: 1.h,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Container(
                              width: 1.w,
                              height: 27.h,
                              color: Colors.black,
                            ),
                            const Text('SIGNUP'),
                          ],
                        ),
                        SizedBox(height: 43.h),
                        SizedBox(
                          height: 40.h,
                          width: 276.w,
                          child: TextField(
                            decoration: textInputDecoration.copyWith(
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 11.h, horizontal: 8.w),
                                child: Text(
                                  'email:',
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 57.h),
                        SizedBox(
                          height: 40.h,
                          width: 276.w,
                          child: TextField(
                            decoration: textInputDecoration.copyWith(
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 11.h, horizontal: 8.w),
                                child: Text(
                                  'Password:',
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 40.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              dynamic result = await _auth.signInAnon();
                              if (result == null) {
                                print('error signing in');
                              } else {
                                print(result.uid);
                              }
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // The UI for the text widget
              // Positioned(
              //   top: 300,
              //   child: Container(
              //     height: 64.h,
              //     width: 64.w,
              //     decoration: BoxDecoration(
              //       color: Colors.green,
              //       borderRadius: BorderRadius.circular(25),
              //     ),
              //     child: Container(
              //       height: 39.h,
              //       width: 39.w,
              //       decoration: BoxDecoration(
              //         border: Border.all(color: Colors.white),
              //         color: Colors.green,
              //         borderRadius: BorderRadius.circular(25),
              //       ),
              //       child: const Icon(
              //         Icons.forward,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
        ),
      ),
    );
  }
}
