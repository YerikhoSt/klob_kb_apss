import 'package:flutter/material.dart';

class BottomSheetHelper {
  static Future<void> showBottomSheet(
    BuildContext context, {
    required Widget Function(BuildContext) builder,
  }) =>
      showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                16,
              ),
            ),
          ),
          isScrollControlled: true,
          isDismissible: true,
          enableDrag: true,
          builder: builder);
}
