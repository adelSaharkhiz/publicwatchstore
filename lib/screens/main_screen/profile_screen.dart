import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/widgets/custome_app_bar.dart';
import 'package:mywatchstore/widgets/profile_item.dart';
import 'package:mywatchstore/widgets/shopping_status.dart';
import 'package:mywatchstore/widgets/surface_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      appBar: const CustomeAppBar(
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.basket,
                style: AppTextStyles.title,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.large),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppDimens.large.height,
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(Assets.png.avatar.path),
                ),
                AppDimens.large.height,
                const Text("مصطفی عادل سحرخیز"),
                AppDimens.large.height,
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppStrings.activeAddress,
                      style: AppTextStyles.title,
                    )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      SvgPicture.asset(Assets.svg.leftArrow),
                      const Expanded(
                        child: Text(
                          AppStrings.lurem,
                          style: AppTextStyles.title,
                          maxLines: 2,
                          softWrap: true,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                AppDimens.small.height,
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                AppDimens.small.height,
                SizedBox(
                    width: double.infinity,
                    height: size.height * .15,
                    child: ListView.builder(
                        itemCount: profileItems.length,
                        itemBuilder: (context, index) => profileItems[index])),
                SizedBox(
                    width: double.infinity,
                    height: size.height*.3,
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) => items[index]))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

List<Widget> profileItems = [
  ProfileItem(content: "6037-9975-6547-3913", svgPath: Assets.svg.creditCart),
  AppDimens.small.height,
  ProfileItem(content: "09157021865", svgPath: Assets.svg.phone),
  AppDimens.small.height,
  ProfileItem(content: "مصطفی عادل سحرخیز", svgPath: Assets.svg.userMenu),
];

List<Widget> items = [
  const SurfaceContaner(
      child: Text(
    textAlign: TextAlign.right,
    AppStrings.policy,
    style: AppTextStyles.title,
  )),
  SurfaceContaner(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.large),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShoppingStatus(
              status: AppStrings.delivered,
              svgPath: Assets.svg.delivered,
            ),
            ShoppingStatus(
              status: AppStrings.cancelled,
              svgPath: Assets.svg.cancelled,
            ),
            ShoppingStatus(
              status: AppStrings.inProccess,
              svgPath: Assets.svg.inProccess,
            ),
          ],
        ),
      ))
];

