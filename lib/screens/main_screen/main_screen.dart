import 'package:flutter/material.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/screens/main_screen/cart_screen.dart';
import 'package:mywatchstore/screens/main_screen/home_screen.dart';
import 'package:mywatchstore/screens/main_screen/profile_screen.dart';
import 'package:mywatchstore/widgets/btm_nav_item.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();

  static const home = 0;
  static const cart = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  List<int> routeHistory = [BtmNavScreenIndex.home];

  int selectedIndex = BtmNavScreenIndex.home;
  
  final GlobalKey<NavigatorState> homeKey = GlobalKey();
  final GlobalKey<NavigatorState> basketKey = GlobalKey();
  final GlobalKey<NavigatorState> profileKey = GlobalKey();

  late final Map map = {
    BtmNavScreenIndex.home: homeKey,
    BtmNavScreenIndex.cart: basketKey,
    BtmNavScreenIndex.profile: profileKey,
  };

  Future<bool> onWillPop() async {
    if (map[selectedIndex]!.currentState!.canPop()) {
      map[selectedIndex]!.currentState!.pop();
    } else if (routeHistory.length > 1) {
      setState(() {
        routeHistory.removeLast();
        selectedIndex = routeHistory.last;
      });
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var btmNavHeight = size.height * .1;

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: onWillPop,
      child: SafeArea(
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
                    children: [
                      Navigator(
                        key: homeKey,
                        onGenerateRoute: (settings) => MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      ),
                      Navigator(
                        key: basketKey,
                        onGenerateRoute: (settings) => MaterialPageRoute(
                            builder: (context) => const CartScreen()),
                      ),
                      Navigator(
                        key: profileKey,
                        onGenerateRoute: (settings) => MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      ),
                    ],
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
                              btmNavOnPressed(index: BtmNavScreenIndex.profile),
                          iconPath: Assets.svg.user,
                          text: AppStrings.userProfile,
                          isActive: selectedIndex == BtmNavScreenIndex.profile,
                        ),
                        BtmNavItem(
                          onTap: () =>
                              btmNavOnPressed(index: BtmNavScreenIndex.cart),
                          count: 1,    
                          iconPath: Assets.svg.cart,
                          text: AppStrings.basket,
                          isActive: selectedIndex == BtmNavScreenIndex.cart,
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
        ),
      ),
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
      routeHistory.add(selectedIndex);
    });
  }
}
