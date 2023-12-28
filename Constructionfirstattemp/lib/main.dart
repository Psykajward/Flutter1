import 'package:constructionfirstattemp/splash_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const Construction());
}

class Construction extends StatelessWidget {
  const Construction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Construction workers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}