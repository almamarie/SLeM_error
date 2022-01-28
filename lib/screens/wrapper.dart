import 'package:flutter/material.dart';
import 'package:smart_level_monitor/screens/home/authenticate.dart';
import 'package:smart_level_monitor/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return either Home or Authenticate Widgets
    return Authenticate();
  }
}
