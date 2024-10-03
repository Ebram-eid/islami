import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadeth/ahadth.dart';
import 'package:islami/ui/screens/home/tabs/quran/quran.dart';
import 'package:islami/ui/screens/home/tabs/radio/radio.dart';
import 'package:islami/ui/screens/home/tabs/sepha/sepha.dart';
import 'package:islami/ui/utils/app-assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_style.dart';

class Home extends StatefulWidget {
  static const String routeName = "home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIcont = 0;
  List<Widget> tabs = [Quran(), Ahadth(), Myradio(), Sepha()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.default_bg), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: buildAppBar(),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: buildBottomNavigation(),
        body: tabs[selectedIcont],
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: const Text(
          "Islami",
          style: AppStyle.appBarStyle,
        ),
        centerTitle: true,
      );

  Theme buildBottomNavigation() => Theme(
        data: ThemeData(canvasColor: AppColors.primary),
        child: BottomNavigationBar(
            selectedIconTheme: const IconThemeData(
              size: 36,
              color: AppColors.accent,
            ),
            showUnselectedLabels: true,
            currentIndex: selectedIcont,
            onTap: (index) {
              selectedIcont = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icon_quran)),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icon_hadeth)),
                  label: "Ahadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icon_sebha)),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.icon_radio,
                  )),
                  label: "Radio"),
            ]),
      );
}
