import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mywatchstore/components/extentions.dart';
import 'package:mywatchstore/gen/assets.gen.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/res/strings.dart';
import 'package:mywatchstore/routes/screen_names.dart';
import 'package:mywatchstore/screens/auth/cubit/auth_cubit.dart';
import 'package:mywatchstore/widgets/app_text_field.dart';
import 'package:mywatchstore/widgets/main_button.dart';

class SendSmsScreen extends StatelessWidget {
  const SendSmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
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
                controller: _controller,
                hintText: AppStrings.hintPhoneNumber),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is ErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("خطایی رخ داده است"),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 1),
                  ));
                } else if (state is SentState) {
                  Navigator.pushNamed(context, ScreenNames.verifyCodeScreen,
                      arguments: state.mobile);
                }
              },
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Center(child: CircularProgressIndicator());
                }
                return MainButton(
                  onPressed: () => BlocProvider.of<AuthCubit>(context)
                      .sendSms(_controller.text),
                  text: AppStrings.sendOtpCode,
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
