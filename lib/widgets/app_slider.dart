import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mywatchstore/res/dimens.dart';

List<String> imgList = [
  "https://static.digiato.com/digiato/2024/05/0_11-910x600.jpg",
  "https://static.digiato.com/digiato/2024/05/Watch-Fit-3-910x600.jpg",
  "https://static.digiato.com/digiato/2024/04/Samsung-Galaxy-Watch-7-jpg_11zon.jpg.webp",
  "https://static.digiato.com/digiato/2024/05/9uYrn4LCZ286kVwsQ7jNNW-1200-80-910x600.jpg"
];

class AppSlider extends StatelessWidget {
  AppSlider({
    super.key,
  });

  final List<Widget> items = imgList
      .map((e) => Padding(
            padding: const EdgeInsets.all(AppDimens.medium),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.medium),
                child: Image.network(e, fit: BoxFit.cover)),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.all(AppDimens.medium),
      height: size.height * .29,
      width: double.infinity,
      child: CarouselSlider(
          items: items,
          options: CarouselOptions(
            autoPlay: true,
            onPageChanged: (index, reason) {},
          )),
    );
  }
}
