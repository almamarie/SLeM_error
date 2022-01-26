import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var textInputDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.red),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.red),
  ),
);

var hintTextStyle = TextStyle(
  color: Colors.amber,
);
