import 'package:flutter/material.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/widgets/app_slider.dart';
import 'package:mywatchstore/widgets/cat_widget.dart';
import 'package:mywatchstore/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          AppSearchBar(
            onTap: () {},
          ),
          const AppSlider(),
          //categories
          Row(
            children: [
              CatWidget(
                onTap: () {},
                gradient: AppColors.catDesktopColors,
                svgPath: Assets.svg.desktop,
                title: AppStrings.desktop,
              ),
              CatWidget(
                onTap: () {},
                gradient: AppColors.catDigitalColors,
                svgPath: Assets.svg.digital,
                title: AppStrings.digital,
              ),
              CatWidget(
                onTap: () {},
                gradient: AppColors.catSmartColors,
                svgPath: Assets.svg.smart,
                title: AppStrings.smart,
              ),
              CatWidget(
                onTap: () {},
                gradient: AppColors.catClasicColors,
                svgPath: Assets.svg.clasic,
                title: AppStrings.classic,
              ),
            ],
          )
        ],
      ),
    )));
  }
}
