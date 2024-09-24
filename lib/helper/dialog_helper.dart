import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/dialog/penapisan_dialog.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';

class DialogHelper {
  static Future<void> showInformationDialog(
    BuildContext context, {
    required String icon,
    double iconSize = 40,
    Color iconBackground = AppColors.primarySurfaceLight,
    required String title,
    String? message,
    TextSpan? messageTextSpan,
    bool barrierDismissible = true,
    required String textAction,
    VoidCallback? onTap,
  }) =>
      showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => barrierDismissible,
            child: PenapisanDialog(
              icon: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: iconBackground,
                    borderRadius: BorderRadius.circular(Sizes.p16),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    icon,
                    height: iconSize,
                    width: iconSize,
                  ),
                ),
              ),
              title: title,
              message: message,
              messageTextSpan: messageTextSpan,
              textAction: textAction,
              onTap: () {
                Navigator.of(context).pop();
                onTap?.call();
              },
            ),
          );
        },
      );
}
