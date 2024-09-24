import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/helper/dialog_helper.dart';
import 'package:klob_kb_apps/helper/snackbar_helper.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/buttons/primary_button.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/cubit/penapisan_kehamilan_cubit.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/cubit/penapisan_kehamilan_state.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/widget/penapisan_kehamilan_question_widget.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

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

  Widget _title(BuildContext context) {
    return Text(
      'Ajukan Pertanyaan Berikut',
      style: context.titleMedium?.bold.toColor(AppColors.neutral100),
    );
  }

  Widget _body() {
    return BlocBuilder<PenapisanKehamilanCubit, PenapisanKehamilanState>(
      builder: (context, state) {
        if (state is ItemLoaded) {
          return CustomSingleChildScrollViewWrapper(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              padding: const EdgeInsets.all(Sizes.p16),
              children: [
                Center(child: _title(context)),
                const Gap(Sizes.p16),
                ...state.data
                    .map((question) => PenapisanKehamilanQuestionWidget(
                        question: question,
                        onOptionSelected: (value) {
                          context
                              .read<PenapisanKehamilanCubit>()
                              .editItem(state.data.indexOf(question), value);
                          if (value == 'Iya') {
                            _showSnackbarSuccess(
                                'Pasien dapat menggunakan metode kontraespsi berdasarkan pilihannya.',
                                context);
                          }
                        })),
              ]);
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
    return BlocConsumer<PenapisanKehamilanCubit, PenapisanKehamilanState>(
      listener: (context, state) {},
      builder: (context, state) {
        final isAllSelected = context
            .read<PenapisanKehamilanCubit>()
            .data
            .every((element) =>
                element.selectedOption != null &&
                element.selectedOption!.isNotEmpty);
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.neutral10,
          ),
          padding: const EdgeInsets.fromLTRB(
              Sizes.p16, Sizes.p8, Sizes.p16, Sizes.p16),
          child: PrimaryButton(
            text: 'Selesai',
            onPressed: isAllSelected ? () => _onPressed(context) : null,
          ),
        );
      },
    );
  }

  void _onPressed(BuildContext context) {
    bool allSelectedTidak = context.read<PenapisanKehamilanCubit>().data.every(
          (element) => element.selectedOption == 'Tidak',
        );
    if (allSelectedTidak) {
      _showDialog(
        context,
        AppIcons.imagePlaceholder,
        'Kemungkinan pasien hamil tidak dapat disingkirkan. pasien harus mengunggu sampai haid berikutnya atau menajalani tes kehamilan.',
      );
    } else {
      _showDialog(
        context,
        AppIcons.imagePlaceholder,
        'Pasien dapat menggunakan metode kontraespsi berdasarkan pilihannya.',
      );
    }
  }

  void _showSnackbarSuccess(String message, BuildContext context) {
    SnackbarHelper.showSuccess(
      context,
      message,
    );
  }

  void _showDialog(
    BuildContext context,
    String icon,
    String title,
  ) {
    DialogHelper.showInformationDialog(
      context,
      icon: icon,
      title: title,
      textAction: 'Ok',
    );
  }
}
