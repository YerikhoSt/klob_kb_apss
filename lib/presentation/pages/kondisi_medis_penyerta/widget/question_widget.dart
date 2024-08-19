import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/presentation/pages/home/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

import '../model/question_model.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget(
      {super.key, required this.question, required this.onOptionSelected});

  final Question question;
  final ValueChanged<String?> onOptionSelected;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: [
        Text(
          widget.question.question,
          style: context.titleSmall,
        ),
        const Gap(Sizes.p16),
        ...widget.question.options.map((option) => RadioListTile<String>(
              title: Text(
                option,
                style: context.labelLarge,
              ),
              value: option,
              groupValue: widget.question.selectedOption,
              onChanged: widget.onOptionSelected,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
            )),
      ],
    );
  }
}
