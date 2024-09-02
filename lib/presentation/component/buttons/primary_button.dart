import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/helper/snackbar_helper.dart';
import 'package:klob_kb_apps/presentation/component/progress_indicator/loading_indicator.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.height = Sizes.p40,
    this.padding = EdgeInsets.zero,
    this.isLoading = false,
    this.isDisabled = false,
    this.onPressed,
    this.isSafeArea = true,
    this.isDisabledMessage,
    this.backgroundColor,
  });

  final String text;
  final double height;
  final EdgeInsetsGeometry padding;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback? onPressed;
  final String? isDisabledMessage;
  final bool isSafeArea;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: isSafeArea,
      bottom: isSafeArea,
      child: SizedBox(
        height: height,
        child: GestureDetector(
          onTap: isDisabledMessage != null
              ? () {
                  SnackbarHelper.showError(
                    context,
                    isDisabledMessage ?? 'Terjadi kesalahan, perikasa kembali',
                  );
                }
              : null,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
            ),
            onPressed: isLoading || isDisabled ? null : onPressed,
            child: Padding(
              padding: padding,
              child: isLoading
                  ? const SizedBox(
                      height: Sizes.p20,
                      width: Sizes.p20,
                      child: AdaptiveLoadingIndicator(
                        color: AppColors.neutral10,
                      ),
                    )
                  : Text(
                      text,
                      textAlign: TextAlign.center,
                      style: context.titleSmall?.bold.white,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
