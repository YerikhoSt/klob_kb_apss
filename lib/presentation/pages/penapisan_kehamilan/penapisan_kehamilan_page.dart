import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/buttons/primary_button.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/model/penapisan_kehamilan_question_model.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/widget/penapisan_kehamilan_question_widget.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';

@RoutePage()
class PenapisanKehamilanPage extends StatelessWidget {
  const PenapisanKehamilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PenapisanKehamilanQuestionModel> data =
        PenapisanKehamilanQuestionModel.getListQuestion();
    return Scaffold(
      bottomNavigationBar: _bottomSection(),
      body: _body(data),
    );
  }

  Widget _body(List<PenapisanKehamilanQuestionModel> data) {
    return CustomSingleChildScrollViewWrapper(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      padding: const EdgeInsets.all(Sizes.p16),
      children: data
          .map((question) => PenapisanKehamilanQuestionWidget(
              question: question, onOptionSelected: (value) {}))
          .toList(),
    );
  }

  Widget _bottomSection() {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.neutral10,
      ),
      padding:
          const EdgeInsets.fromLTRB(Sizes.p16, Sizes.p8, Sizes.p16, Sizes.p16),
      child: PrimaryButton(
        text: 'Selesai',
        onPressed: () {},
      ),
    );
  }
}
