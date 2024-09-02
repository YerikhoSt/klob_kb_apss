import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../config/theme/app_colors.dart';

class CarouselSection extends StatefulWidget {
  const CarouselSection({super.key, required this.carouselData});

  final List<String> carouselData;

  @override
  State<CarouselSection> createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  int currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentSliderIndex = index;
              });
            },
            height: 170,
            viewportFraction: 0.95,
            autoPlay: true,
          ),
          items: widget.carouselData
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p8,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      Sizes.p12,
                    ),
                    child: Container(
                      color: Colors.white,
                      width: 355,
                      child: Image.asset(
                        e,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        const Gap(Sizes.p12),
        AnimatedSmoothIndicator(
          activeIndex: currentSliderIndex,
          count: widget.carouselData.length,
          effect: const ExpandingDotsEffect(
              dotWidth: Sizes.p8,
              dotHeight: Sizes.p8,
              activeDotColor: AppColors.primary),
        )
      ],
    );
  }
}
