import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/routes/screen_names.dart';
import 'package:mywatchstore/widgets/app_text_field.dart';
import 'package:mywatchstore/widgets/main_button.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final mobileRouteArg = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.medium.height,
            Text(AppStrings.otpCodeSendFor.replaceAll("replace", mobileRouteArg),
                style: AppTextStyles.title),
            AppDimens.small.height,
            const Text(
              AppStrings.wrongNumberEditNumber,
              style: AppTextStyles.primaryThemeTextStyle,
            ),
            AppDimens.large.height,
            AppTextField(
                lablel: AppStrings.enterYourNumber,
                prefixLablel: "2:56",
                controller: controller,
                hintText: AppStrings.hintPhoneNumber),
            MainButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenNames.registerScreen);
              },
              text: AppStrings.next,
            )
          ],
        ),
      ),
    ));
  }
}
