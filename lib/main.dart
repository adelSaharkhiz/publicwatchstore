import 'package:flutter/material.dart';
import 'package:mywatchstore/components/theme.dart';
import 'package:mywatchstore/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mywatchstore/screens/auth/cubit/auth_cubit.dart';
import 'package:mywatchstore/screens/auth/send_sms_screen.dart';
import 'package:mywatchstore/screens/main_screen/home_screen.dart';
import 'package:mywatchstore/screens/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme(),
        // initialRoute: ScreenNames.root,
        routes: routes,
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is LoggedInState) {
              return const HomeScreen();
            } else if (state is LoggedOutState) {
              return const SendSmsScreen();
            } else {
              return const SendSmsScreen();
            }
          },
        ),
      ),
    );
  }
}
