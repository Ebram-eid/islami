import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app-assets.dart';

import '../home/home.dart';

class Splash extends StatefulWidget {
  static const String routeName = "splash";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.splash), fit: BoxFit.cover))),
    );
  }
}
