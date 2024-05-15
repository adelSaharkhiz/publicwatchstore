import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/widgets/app_text_field.dart';
import 'package:mywatchstore/widgets/main_button.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.large.height,
            Text(
                AppStrings.otpCodeSendFor.replaceAll("replace", "09157021865")),
            const Text(AppStrings.wrongNumberEditNumber),
            AppDimens.large.height,
            AppTextField(
                lablel: AppStrings.enterYourNumber,
                controller: controller,
                hintText: AppStrings.hintPhoneNumber),
            MainButton(
              onPressed: () {},
              text: AppStrings.next,
            )
          ],
        ),
      ),
    ));
  }
}
