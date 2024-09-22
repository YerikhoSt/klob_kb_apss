import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/buttons/primary_button.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/cubit/penapisan_kehamilan_cubit.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/cubit/penapisan_kehamilan_state.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/widget/penapisan_kehamilan_question_widget.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';

@RoutePage()
class PenapisanKehamilanPage extends StatelessWidget {
  const PenapisanKehamilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PenapisanKehamilanCubit()..loadData(),
      child: Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Penapisan Kehamilan',
        ),
        bottomNavigationBar: _bottomSection(),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<PenapisanKehamilanCubit, PenapisanKehamilanState>(
      builder: (context, state) {
        if (state is ItemLoaded) {
          return CustomSingleChildScrollViewWrapper(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            padding: const EdgeInsets.all(Sizes.p16),
            children: state.data
                .map((question) => PenapisanKehamilanQuestionWidget(
                    question: question,
                    onOptionSelected: (value) {
                      context
                          .read<PenapisanKehamilanCubit>()
                          .editItem(state.data.indexOf(question), value);
                      debugPrint('radioSelect: $value');
                    }))
                .toList(),
          );
        } else {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.primary,
          ));
        }
      },
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
