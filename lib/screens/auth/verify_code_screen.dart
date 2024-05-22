import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/components/text_style.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/routes/screen_names.dart';
import 'package:mywatchstore/screens/auth/cubit/auth_cubit.dart';
import 'package:mywatchstore/widgets/app_text_field.dart';
import 'package:mywatchstore/widgets/main_button.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
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
            Text(
                AppStrings.otpCodeSendFor.replaceAll("replace", mobileRouteArg),
                style: AppTextStyles.title),
            AppDimens.small.height,
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Text(
                AppStrings.wrongNumberEditNumber,
                style: AppTextStyles.primaryThemeTextStyle,
              ),
            ),
            AppDimens.large.height,
            AppTextField(
                lablel: AppStrings.enterVerificationCode,
                prefixLablel: "2:56",
                controller: _controller,
                hintText: AppStrings.hintVerificationCode),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is ErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("خطایی رخ داده است"),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 1),
                  ));
                } else if (state is VerifiedNotRegisteredState) {
                  Navigator.pushNamed(
                    context,
                    ScreenNames.registerScreen,
                  );
                } else if (state is VerifiedIsRegisteredState) {
                  Navigator.pushNamed(context, ScreenNames.homeScreen);
                }
              },
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Center(child: CircularProgressIndicator());
                }
                return MainButton(
                  onPressed: () {
                    BlocProvider.of<AuthCubit>(context)
                      .verifyCode(mobileRouteArg, _controller.text);
                  },
                  text: AppStrings.next,
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
