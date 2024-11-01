import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/component/widget/carousel_section.dart';
import 'package:klob_kb_apps/presentation/component/widget/menu_section.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/card_wrapper.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:svg_flutter/svg.dart';

import '../../../util/constants/sizes.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        enableBackButton: false,
        actions: [
          Center(
            child: CardWrapper(
                width: 40,
                height: 40,
                backgroundColor: AppColors.neutral10,
                borderRadius: BorderRadius.circular(40),
                isInkWellOnTop: true,
                splashColor: AppColors.primaryMain,
                borderWidth: 2,
                onTap: () => _navigateToAbout(context),
                child: Center(
                  child: SvgPicture.asset(
                    AppIcons.info,
                    height: 24,
                  ),
                )),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(child: _mainSection()),
        ],
      ),
    );
  }

  Widget _mainSection() {
    List<String> carouselData = [
      AppIcons.imagePlaceholder,
      AppIcons.imagePlaceholder,
      AppIcons.imagePlaceholder,
    ];
    return SafeArea(
      child: Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(colors: [
        //   AppColors.primaryShade200,
        //   AppColors.primaryShade100,
        //   AppColors.primaryShade100,
        // ], begin: Alignment.topLeft)),
        color: AppColors.neutral10,
        child: Center(
          child: CustomSingleChildScrollViewWrapper(
              padding: const EdgeInsets.all(Sizes.p16),
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                CarouselSection(carouselData: carouselData),
                const Gap(Sizes.p24),
                const MenuSection(),
              ]),
        ),
      ),
    );
  }

  void _navigateToAbout(BuildContext context) {
    context.router.push(const AboutRoute());
  }
}
