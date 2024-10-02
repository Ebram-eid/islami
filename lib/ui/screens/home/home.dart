import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app-assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';

class Home extends StatelessWidget {
  static const String routeName = "home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.default_bg), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: buildAppBar(),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: BottomNavigationBar(items: []),
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
        backgroundColor: AppColors.transparent,
        title: Text(
          "Islami",
          style: AppStyle.appBarTextStyle,
        ),
        centerTitle: true,
      );
}
