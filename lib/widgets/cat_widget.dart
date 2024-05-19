import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/res/dimens.dart';

// ignore: must_be_immutable
class CatWidget extends StatelessWidget {
   CatWidget({
    super.key,
    required this.title,
    required this.svgPath,
    required this.gradient,
    required this.onTap
  });

  final String svgPath;
  final String title;
  final List<Color> gradient;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            padding: const EdgeInsets.all(AppDimens.small),
            height: size.height * .08,
            width: size.height * .08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.large),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradient)),
            child: SvgPicture.asset(svgPath),
          ),
          Text(
            title,
            style: AppTextStyles.title.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
