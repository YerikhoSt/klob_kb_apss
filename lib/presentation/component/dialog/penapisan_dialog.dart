import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/presentation/component/buttons/primary_button.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

class PenapisanDialog extends StatelessWidget {
  const PenapisanDialog({
    super.key,
    required this.icon,
    required this.title,
    this.message,
    this.messageTextSpan,
    required this.textAction,
    required this.onTap,
  });

  final Widget icon;
  final String title;
  final String? message;
  final TextSpan? messageTextSpan;
  final String textAction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Sizes.p16)),
      ),
      insetPadding: const EdgeInsets.all(Sizes.p24),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p36,
          vertical: Sizes.p36,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(Sizes.p8),
            icon,
            const Gap(Sizes.p32),
            Text(
              title,
              style: context.headlineMedium?.bold.toSize(16),
              textAlign: TextAlign.center,
            ),
            if (message != null || messageTextSpan != null) ...[
              const Gap(Sizes.p8),
              if (messageTextSpan != null)
                Text.rich(
                  messageTextSpan!,
                  style: context.titleSmall?.semiBold,
                  textAlign: TextAlign.center,
                )
              else
                Text(
                  message!,
                  style: context.titleSmall?.semiBold,
                  textAlign: TextAlign.center,
                ),
            ],
            const Gap(Sizes.p24),
            PrimaryButton(
              text: textAction,
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
