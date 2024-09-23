import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/bottom_sheet/bottom_sheet_wrapper.dart';
import 'package:klob_kb_apps/presentation/component/buttons/primary_button.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/cubit/kondisi_medis_penyerta_cubit.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/cubit/kondisi_medis_penyerta_state.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/widget/question_widget.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

@RoutePage()
class KondisiMedisPenyertaPage extends StatefulWidget {
  const KondisiMedisPenyertaPage({super.key});

  @override
  State<KondisiMedisPenyertaPage> createState() =>
      _KondisiMedisPenyertaPageState();
}

class _KondisiMedisPenyertaPageState extends State<KondisiMedisPenyertaPage> {
  // late List<Question> _data;
  Map<String, String> _mergedData = {};
  List<Map<String, String>> _selectedData = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => KondisiMedisPenyertaCubit(),
      child: Scaffold(
        body: _body(),
        bottomNavigationBar:
            BlocBuilder<KondisiMedisPenyertaCubit, KondisiMedisPenyertaState>(
          builder: (context, state) {
            final data = context.read<KondisiMedisPenyertaCubit>().mergedMap;
            if (data.isNotEmpty) {
              return _showModalBottomSheet(context, data);
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  Widget _body() {
    return BlocListener<KondisiMedisPenyertaCubit, KondisiMedisPenyertaState>(
        listener: (context, state) {
      if (state is SelectedMapItemState) {
        context.read<KondisiMedisPenyertaCubit>().updateSelectedDataMap(
              state.mapItem,
              state.index,
            );
      }

      if (state is DataMapItemState) {
        context
            .read<KondisiMedisPenyertaCubit>()
            .mergeMaps(state.dataMapItem ?? []);
        _selectedData = state.dataMapItem ?? [];
      }
      if (state is MergedMapItemState) {
        _mergedData = state.mergedMap;
      }
    }, child: BlocBuilder<KondisiMedisPenyertaCubit, KondisiMedisPenyertaState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ExpansionPanelList(
            animationDuration: const Duration(milliseconds: 600),
            elevation: 1,
            expansionCallback: (int index, bool isExpanded) {
              context.read<KondisiMedisPenyertaCubit>().expandItem(index);
            },
            children: context
                .read<KondisiMedisPenyertaCubit>()
                .questionData
                .map<ExpansionPanel>((question) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(question.type,
                        style: context.titleMedium?.extraBold.greyDark),
                  );
                },
                body: QuestionWidget(
                  question: question,
                  onOptionSelected: (value) {
                    int selectedIndex = context
                        .read<KondisiMedisPenyertaCubit>()
                        .questionData
                        .indexOf(question);
                    context
                        .read<KondisiMedisPenyertaCubit>()
                        .editItem(selectedIndex, value);
                    context
                        .read<KondisiMedisPenyertaCubit>()
                        .selectedOption(selectedIndex, value);
                  },
                ),
                isExpanded: question.isExpanded,
              );
            }).toList(),
          ),
        );
      },
    ));
  }

  Widget _showModalBottomSheet(BuildContext context, Map<String, String> data) {
    return PrimaryBottomSheetWrapper(
      child: CustomColumn(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Kondisi Medis',
            style: context.textTheme.bodyLarge?.bold,
          ),
          const Gap(16),
          CustomSingleChildScrollViewWrapper(
            scrollDirection: Axis.horizontal,
            children: [
              circularPercentWidget(
                context,
                percent: int.parse((data['hormonal'] ?? '0')[0]) / 4,
                type: 'CHC',
                value: data['hormonal'] ?? '',
              ),
              const Gap(16),
              circularPercentWidget(
                context,
                percent: int.parse((data['pilProgestin'] ?? '0')[0]) / 4,
                type: 'POP',
                value: data['pilProgestin'] ?? '',
              ),
              const Gap(16),
              circularPercentWidget(
                context,
                percent: int.parse((data['suntikProgestin'] ?? '0')[0]) / 4,
                type: 'DMPA',
                value: data['suntikProgestin'] ?? '',
              ),
              const Gap(16),
              circularPercentWidget(
                context,
                percent: int.parse((data['implan'] ?? '0')[0]) / 4,
                type: 'LNG/ETG',
                value: data['implan'] ?? '',
              ),
              const Gap(16),
              circularPercentWidget(context,
                  percent:
                      int.parse((data['akdrLevonorgestrel'] ?? '0')[0]) / 4,
                  type: 'LNG-IUD',
                  value: data['akdrLevonorgestrel'] ?? ''),
              const Gap(16),
              circularPercentWidget(context,
                  percent: int.parse((data['akdrCopper'] ?? '0')[0]) / 4,
                  type: 'Cu-IUD',
                  value: data['akdrCopper'] ?? ''),
              const Gap(16),
              _circullarCharacterItem('Tubektomi', data['tubektomi'] ?? ''),
              const Gap(16),
              _circullarCharacterItem('Vasektomi', data['vasektomi'] ?? ''),
              const Gap(16),
            ],
          ),
          const Gap(16),
          SizedBox(
            width: double.infinity,
            child: PrimaryButton(
              text: 'Lihat Rekomendasi',
              onPressed: () => _navigateToDetail(_selectedData, _mergedData),
            ),
          ),
        ],
      ),
    );
  }

  Column circularPercentWidget(BuildContext context,
      {required String type, required String value, required double percent}) {
    return Column(
      children: [
        CircularPercentIndicator(
          animation: true,
          animationDuration: 1,
          animateFromLastPercent: true,
          radius: 24,
          lineWidth: 4.0,
          percent: percent,
          center: Text(
            value,
            style: context.textTheme.bodyMedium?.bold,
          ),
          progressColor: AppColors.accent,
          backgroundColor: AppColors.neutral40,
        ),
        const Gap(4),
        Text(
          type,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }

  Column _circullarCharacterItem(String type, String value) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: value.isEmpty ? AppColors.neutral40 : AppColors.accent,
              width: 4,
            ),
          ),
          child: Center(
            child: Text(
              value.isEmpty ? '-' : value,
              style: context.textTheme.bodyMedium?.bold,
            ),
          ),
        ),
        const Gap(4),
        Text(
          type,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }

  void _navigateToDetail(
      List<Map<String, String>> selectedData, Map<String, String> mergedData) {
    context.router.push(KondisiMedisPenyertaDetailRoute(
        mergedData: mergedData, selectedData: selectedData));
  }
}
