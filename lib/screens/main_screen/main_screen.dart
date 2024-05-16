import 'package:flutter/material.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/widgets/btm_nav_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var btmNavHeight = size.height * .1;

    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: btmNavHeight,
              child: Container(
                color: Colors.red,
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: AppColors.btmNavColor,
                height: btmNavHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtmNavItem(
                      onTap: () {},
                      iconPath: Assets.svg.home,
                      text: AppStrings.home,
                      isActive: true,
                    ),
                    BtmNavItem(
                      onTap: () {},
                      iconPath: Assets.svg.basket,
                      text: AppStrings.basket,
                      isActive: true,
                    ),
                    BtmNavItem(
                      onTap: () {},
                      iconPath: Assets.svg.user,
                      text: AppStrings.userProfile,
                      isActive: true,
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
