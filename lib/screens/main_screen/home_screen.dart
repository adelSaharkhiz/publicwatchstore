import 'package:flutter/material.dart';
import 'package:mywatchstore/res/dimens.dart';
import 'package:mywatchstore/widgets/app_slider.dart';
import 'package:mywatchstore/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          AppSearchBar(
            onTap: () {},
          ),
          AppSlider()
        ],
      ),
    )));
  }
}


