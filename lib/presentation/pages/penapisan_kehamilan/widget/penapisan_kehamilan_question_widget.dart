import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/model/penapisan_kehamilan_question_model.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

class PenapisanKehamilanQuestionWidget extends StatelessWidget {
  const PenapisanKehamilanQuestionWidget(
      {super.key, required this.question, required this.onOptionSelected});

  final PenapisanKehamilanQuestionModel question;
  final ValueChanged<String?> onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return CustomColumn(children: [
      Text(
        question.question,
        style: context.titleMedium,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: question.options
            .map((option) => Expanded(
                  child: RadioListTile<String>(
                    title: Text(
                      option,
                      style: context.labelLarge,
                    ),
                    value: option,
                    groupValue: question.selectedOption,
                    onChanged: onOptionSelected,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0.0),
                  ),
                ))
            .toList(),
      ),
      const Gap(Sizes.p8),
    ]);
  }
}
