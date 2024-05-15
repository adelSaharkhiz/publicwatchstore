import 'package:flutter/material.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/screens/verify_code_screen.dart';
import 'package:mywatchstore/widgets/app_text_field.dart';
import 'package:mywatchstore/widgets/main_button.dart';

class SendSmsScreen extends StatelessWidget {
  const SendSmsScreen({super.key});

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
            AppTextField(
                lablel: AppStrings.enterYourNumber,
                controller: controller,
                hintText: AppStrings.hintPhoneNumber),
            MainButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyCodeScreen(),
                    ));
              },
              text: AppStrings.sendOtpCode,
            )
          ],
        ),
      ),
    ));
  }
}
