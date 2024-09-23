import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/card_wrapper.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:svg_flutter/svg.dart';

class MetodeKontrasepsiItem extends StatelessWidget {
  const MetodeKontrasepsiItem({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      padding: const EdgeInsets.all(Sizes.p16),
      borderRadius: BorderRadius.circular(Sizes.p8),
      borderColor: AppColors.neutral30,
      backgroundColor: AppColors.neutral10,
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.neutral10,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: AppColors.primary,
              ),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.imagePlaceholder,
                height: 24,
              ),
            ),
          ),
          const Gap(16),
          Expanded(
              child: Text(
            title,
            style: context.titleMedium?.bold.toColor(AppColors.neutral100),
          )),
          const Gap(16),
          Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.neutral10,
              border: Border.fromBorderSide(
                BorderSide(color: AppColors.neutral70),
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.arrowRight,
                color: AppColors.neutral70,
                width: 10,
                height: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
