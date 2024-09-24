import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:svg_flutter/svg.dart';

import '../../../config/theme/app_colors.dart';
import '../../../helper/focus_helper.dart';
import '../../../util/constants/sizes.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    this.title,
    this.onBackPressed,
    this.actions,
    this.enableBackButton = true,
    this.isLightTheme = true,
    this.isDarkShadow = false,
    this.isLightShadow = false,
    this.backIconAsset = AppIcons.arrowLeft,
    this.backgroundColor,
    this.paddingTitle,
    this.bottom,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  });

  final String? title;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final bool enableBackButton;
  final bool isLightTheme;
  final bool isDarkShadow;
  final bool isLightShadow;
  final String backIconAsset;
  final Color? backgroundColor;
  final EdgeInsets? paddingTitle;
  final PreferredSizeWidget? bottom;
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ??
          (isLightTheme ? AppColors.neutral10 : AppColors.neutral100),
      elevation: isDarkShadow || isLightShadow
          ? 5
          : isLightTheme
              ? null
              : 1,
      shadowColor: isDarkShadow
          ? AppColors.neutral100.withOpacity(.05)
          : isLightShadow
              ? AppColors.neutral100.withOpacity(.03)
              : null,
      leading: enableBackButton
          ? IconButton(
              onPressed: () {
                FocusHelper.unfocus();

                (onBackPressed ?? () => context.router.maybePop(context))
                    .call();
              },
              splashRadius: Sizes.p24,
              icon: SvgPicture.asset(
                backIconAsset,
                height: 14,
                color:
                    isLightTheme ? AppColors.neutral100 : AppColors.neutral10,
              ),
            )
          : null,
      centerTitle: false,
      titleSpacing: enableBackButton ? 0 : 16,
      title: Text(
        title ?? '',
        style: const TextStyle().extraBold.toSize(16).toColor(
              isLightTheme ? AppColors.neutral100 : AppColors.neutral10,
            ),
      ),
      actions: actions
        ?..add(
          const Gap(Sizes.p16),
        ),
      bottom: bottom,
    );
  }
}
