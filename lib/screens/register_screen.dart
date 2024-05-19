import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/routes/screen_names.dart';
import 'package:mywatchstore/widgets/app_text_field.dart';
import 'package:mywatchstore/widgets/avatar.dart';
import 'package:mywatchstore/widgets/register_app_bar.dart';
import 'package:mywatchstore/widgets/main_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      appBar: RegisterAppBar(size: size),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppDimens.large.height,
              const Avatar(),
              AppTextField(
                  lablel: AppStrings.nameLastName,
                  controller: controller,
                  hintText: AppStrings.hintNameLastName),
              AppTextField(
                  lablel: AppStrings.homeNumber,
                  controller: controller,
                  hintText: AppStrings.hintHomeNumber),
              AppTextField(
                  lablel: AppStrings.address,
                  controller: controller,
                  hintText: AppStrings.hintAddress),
              AppTextField(
                  lablel: AppStrings.postalCode,
                  controller: controller,
                  hintText: AppStrings.hintPostalCode),
              AppTextField(
                lablel: AppStrings.location,
                controller: controller,
                hintText: AppStrings.hintLocation,
                icon: SvgPicture.asset(Assets.svg.location,
                    fit: BoxFit.scaleDown),
              ),
              AppDimens.small.height,
              MainButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenNames.mainScreen);
                  },
                  text: AppStrings.register),
              AppDimens.large.height
            ],
          ),
        ),
      ),
    ));
  }
}
