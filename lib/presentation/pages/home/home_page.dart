import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/home/widget/carousel_section.dart';
import 'package:klob_kb_apps/presentation/pages/home/widget/menu_section.dart';

import '../../../util/constants/sizes.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Stack(
        children: [
          _mainSection(),
        ],
      )),
    );
  }

  Widget _mainSection() {
    List<String> carouselData = [
      "assets/images/carousel_1.png",
      "assets/images/carousel_1.png",
      "assets/images/carousel_1.png",
    ];
    return SafeArea(
      child: Center(
        child: CustomSingleChildScrollViewWrapper(
            padding: const EdgeInsets.all(Sizes.p16),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            bodyWrapper: (child) {
              return Container(
                decoration: BoxDecoration(
                    color: AppColors.neutral10,
                    borderRadius: BorderRadius.circular(Sizes.p16)),
                padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p16, vertical: Sizes.p32),
                child: child,
              );
            },
            children: [
              CarouselSection(carouselData: carouselData),
              const Gap(Sizes.p24),
              const MenuSection(),
            ]),
      ),
    );
  }
}
