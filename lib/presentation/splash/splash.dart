import 'package:flutter/material.dart';
import 'package:signup_onboarding/presentation/auth/auth.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Auth()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/left.png')),
    );
  }
}
