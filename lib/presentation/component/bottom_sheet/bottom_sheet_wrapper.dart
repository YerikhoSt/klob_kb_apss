import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/pages/home/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';

class PrimaryBottomSheetWrapper extends StatelessWidget {
  const PrimaryBottomSheetWrapper({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(
      Sizes.p16,
      Sizes.p12,
      Sizes.p16,
      Sizes.p16,
    ),
    this.color = Colors.white,
  });
  final Color? color;
  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      padding: padding,
      child: CustomColumn(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.neutral40,
              borderRadius: BorderRadius.circular(Sizes.p16),
            ),
          ),
          const Gap(20),
          child,
        ],
      ),
    );
  }
}
