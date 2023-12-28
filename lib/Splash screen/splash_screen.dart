import 'package:flutter/material.dart';
import 'package:construction_app/size_conf.dart';
import 'splash_body.dart';
class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
