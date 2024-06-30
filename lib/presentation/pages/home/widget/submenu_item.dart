import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:svg_flutter/svg.dart';

import 'wrapper/card_wrapper.dart';

class SubmenuItem extends StatelessWidget {
  const SubmenuItem({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  final String title;
  final String iconPath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      onTap: onTap,
      padding: const EdgeInsets.all(Sizes.p4),
      splashColor: AppColors.primaryMain,
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 55,
            decoration: BoxDecoration(
              color: AppColors.primarySurfaceLight,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
            ),
          ),
          const Gap(Sizes.p8),
          Text(
            title,
            style: context.bodySmall?.bold,
          ),
        ],
      ),
    );
  }
}
