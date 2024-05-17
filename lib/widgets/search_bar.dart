import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';

class AppSearchBar extends StatelessWidget {
   const AppSearchBar({
    super.key,
    required this.onTap
  });
   
   final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(AppDimens.medium),
        height: size.height * .06,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.searchBar,
            borderRadius: BorderRadius.circular(60),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.shadow, blurRadius: 3, offset: Offset(0, 6))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.svg.search),
              const Text(AppStrings.searchProduct, style: AppTextStyles.hint),
              Image.asset(Assets.png.mainLogo.path)
            ],
          ),
        ),
      ),
    );
  }
}
