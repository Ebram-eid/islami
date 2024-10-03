import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_style.dart';
import 'package:islami/ui/utils/consts.dart';

import '../../../../utils/app-assets.dart';
import '../../../../utils/app_colors.dart';

class Quran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 30,
            child: Image.asset(AppAssets.qur2an_screen),
          ),
          Expanded(
            flex: 70,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                VerticalDivider(
                  thickness: 3,
                  color: AppColors.primary,indent: 8,
                ),
                Column(
                  children: [
                    buildDivider(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Sura ",
                            textAlign: TextAlign.center,
                            style: AppStyle.titleStyle,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Number",
                            textAlign: TextAlign.center,
                            style: AppStyle.titleStyle,
                          ),
                        ),
                      ],
                    ),
                    buildDivider(),
                    buildSuraListView(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded buildSuraListView() => Expanded(
        // flex: 70,
        child: ListView.builder(
            itemCount: ConstsList.versesNumber.length,
            itemBuilder: (contxt, index) {
              return Row(
                children: [
                  Expanded(
                    child: Text(
                      ConstsList.suraNames[index],
                      textAlign: TextAlign.center,
                      style: AppStyle.titleStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${ConstsList.versesNumber[index]}",
                      textAlign: TextAlign.center,
                      style: AppStyle.titleStyle,
                    ),
                  ),
                ],
              );
            }),
      );
}

Divider buildDivider() {
  return Divider(
    color: AppColors.primary,
    thickness: 3,
  );
}
