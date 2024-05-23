import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';

// ignore: must_be_immutable
class Avatar extends StatelessWidget {
  Avatar({super.key, required this.onTap, required this.file});

  void Function() onTap;
  final file;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            width: size.width * .3,
            height: size.width * .3,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: file == null
                    ? Image.asset(Assets.png.avatar.path)
                    : Image.file(file)),
          ),
          AppDimens.medium.height,
          const Text(AppStrings.chooseProfileImage,
              style: AppTextStyles.avatarText)
        ],
      ),
    );
  }
}
