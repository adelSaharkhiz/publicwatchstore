import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mywatchstore/res/colors.dart';
import 'package:mywatchstore/res/dimens.dart';

List<String> imgList = [
  "https://static.digiato.com/digiato/2024/05/0_11-910x600.jpg",
  "https://static.digiato.com/digiato/2024/05/Watch-Fit-3-910x600.jpg",
  "https://static.digiato.com/digiato/2024/04/Samsung-Galaxy-Watch-7-jpg_11zon.jpg.webp",
  "https://static.digiato.com/digiato/2024/05/9uYrn4LCZ286kVwsQ7jNNW-1200-80-910x600.jpg"
];

class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
  });

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselController _controller = CarouselController();

  final List<Widget> items = imgList
      .map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.medium),
          child: Image.network(e, fit: BoxFit.cover)))
      .toList();

  int _currunt = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(AppDimens.medium),
          height: size.height * .29,
          width: double.infinity,
          child: CarouselSlider(
              carouselController: _controller,
              items: items,
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currunt = index;
                  });
                },
              )),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList
                .asMap()
                .entries
                .map((e) => GestureDetector(
                      onTap: () => _controller.animateToPage(e.key),
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 0,
                            right: AppDimens.small,
                            left: AppDimens.small,
                            bottom: AppDimens.small),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColors.sliderCircle),
                            shape: BoxShape.circle,
                            color:
                                _currunt == e.key ? Colors.grey : Colors.white),
                      ),
                    ))
                .toList())
      ],
    );
  }
}
