import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/card_wrapper.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:svg_flutter/svg.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({
    super.key,
    this.title,
    this.onTap,
    this.icon,
  });

  final VoidCallback? onTap;
  final String? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      onTap: onTap,
      padding: const EdgeInsets.all(Sizes.p16),
      backgroundColor: AppColors.neutral10,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primarySurfaceLight,
              borderRadius: BorderRadius.circular(
                Sizes.p8,
              ),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              icon!,
              height: 16,
              width: 16,
              color: AppColors.primaryMain,
            ),
          ),
          const Gap(Sizes.p8),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title!,
                    style: context.bodyMedium?.extraBold
                        .toColor(AppColors.neutral100),
                  ),
                ),
                const Icon(
                  Icons.chevron_right_rounded,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
