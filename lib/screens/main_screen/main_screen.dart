import 'package:flutter/material.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/screens/main_screen/basket_screen.dart';
import 'package:mywatchstore/screens/main_screen/home_screen.dart';
import 'package:mywatchstore/screens/main_screen/profile_screen.dart';
import 'package:mywatchstore/widgets/btm_nav_item.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();

  static const home = 0;
  static const basket = 1;
  static const user = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selectedIndex = BtmNavScreenIndex.home;

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
              child: IndexedStack(
                index: selectedIndex,
                children: const [HomeScreen(), BasketScreen(), ProfileScreen()],
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
                      onTap: () =>
                          btmNavOnPressed(index: BtmNavScreenIndex.user),
                      iconPath: Assets.svg.user,
                      text: AppStrings.userProfile,
                      isActive: selectedIndex == BtmNavScreenIndex.user,
                    ),
                    BtmNavItem(
                      onTap: () =>
                          btmNavOnPressed(index: BtmNavScreenIndex.basket),
                      iconPath: Assets.svg.basket,
                      text: AppStrings.basket,
                      isActive: selectedIndex == BtmNavScreenIndex.basket,
                    ),
                    BtmNavItem(
                      onTap: () =>
                          btmNavOnPressed(index: BtmNavScreenIndex.home),
                      iconPath: Assets.svg.home,
                      text: AppStrings.home,
                      isActive: selectedIndex == BtmNavScreenIndex.home,
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}
