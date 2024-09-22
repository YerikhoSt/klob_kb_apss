import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

@RoutePage()
class KondisiMedisPenyertaDetailPage extends StatelessWidget {
  final Map<String, String> mergedData;
  final List<Map<String, String>> selectedData;

  const KondisiMedisPenyertaDetailPage({
    required this.mergedData,
    required this.selectedData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Rekomendasi Roda KLOP KB',
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return CustomSingleChildScrollViewWrapper(
      padding: const EdgeInsets.all(Sizes.p16),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      bodyWrapper: (child) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.neutral10,
              borderRadius: BorderRadius.circular(Sizes.p16)),
          padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p16, vertical: Sizes.p32),
          child: child,
        );
      },
      children: [
        _kondisiMedisSection(context),
        const Gap(16),
        _circullarPercentListSection(context),
      ],
    );
  }

  Widget _kondisiMedisSection(BuildContext context) {
    List<Map<String, String>> filteredSelectedData =
        selectedData.where((item) => item['option'] != 'Tidak').toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kondisi Medis',
          style: context.titleMedium?.bold
              .toSize(18)
              .toColor(AppColors.neutral100),
        ),
        const Gap(16),
        for (var i = 0; i < filteredSelectedData.length; i++) ...[
          _kondisiMedisItem(context, i, filteredSelectedData[i]['type'] ?? '',
              filteredSelectedData[i]['option'] ?? ''),
          const Gap(8),
        ]
      ],
    );
  }

  Widget _kondisiMedisItem(
      BuildContext context, int index, String type, String option) {
    return Wrap(
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '${index + 1}. ',
              style:
                  context.bodyMedium?.toSize(16).toColor(AppColors.neutral100),
            ),
            Expanded(
              child: RichText(
                softWrap: true,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Pilihan ',
                      style: context.textTheme.bodyMedium
                          ?.toSize(14)
                          .toColor(AppColors.neutral100)),
                  TextSpan(
                      text: option,
                      style: context.textTheme.bodyMedium?.bold
                          .toColor(AppColors.neutral100)),
                  TextSpan(
                      text: ' pada list menu ',
                      style: context.textTheme.bodyMedium
                          ?.toSize(14)
                          .toColor(AppColors.neutral100)),
                  TextSpan(
                      text: type,
                      style: context.textTheme.bodyMedium?.bold
                          .toColor(AppColors.neutral100)),
                ]),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _circullarPercentListSection(BuildContext context) {
    return Column(
      children: [
        _circullarPercentItem(
          context,
          type: 'CHC',
          subType: 'Combined hormonal contracetives',
          value: mergedData['hormonal'] ?? '',
          percent: int.parse((mergedData['hormonal'] ?? '0')[0]) / 4,
        ),
        const Gap(16),
        _circullarPercentItem(
          context,
          type: 'POP',
          subType: 'Progestogen-only pills',
          value: mergedData['pilProgestin'] ?? '',
          percent: int.parse((mergedData['pilProgestin'] ?? '0')[0]) / 4,
        ),
        const Gap(16),
        _circullarPercentItem(
          context,
          type: 'DMPA',
          subType: 'Progestogen-only injectables',
          value: mergedData['suntikProgestin'] ?? '',
          percent: int.parse((mergedData['suntikProgestin'] ?? '0')[0]) / 4,
        ),
        const Gap(16),
        _circullarPercentItem(
          context,
          type: 'LNG/ETG',
          subType: 'Imlants',
          value: mergedData['implan'] ?? '',
          percent: int.parse((mergedData['implan'] ?? '0')[0]) / 4,
        ),
        const Gap(16),
        _circullarPercentItem(
          context,
          type: 'LNG-IUD',
          subType: 'Levonorgestrel IUD  /',
          value: mergedData['akdrLevonorgestrel'] ?? '',
          percent: int.parse((mergedData['akdrLevonorgestrel'] ?? '0')[0]) / 4,
        ),
        const Gap(16),
        _circullarPercentItem(
          context,
          type: 'Cu-IUD',
          subType: 'Copper intrauterine device',
          value: mergedData['akdrCopper'] ?? '',
          percent: int.parse((mergedData['akdrCopper'] ?? '0')[0]) / 4,
        ),
        const Gap(16),
        _circullarCharacterItem(
          context,
          type: 'TUBEKTOMI',
          value: mergedData['tubektomi'] ?? '',
        ),
        const Gap(16),
        _circullarCharacterItem(
          context,
          type: 'VASEKTOMI',
          value: mergedData['vasektomi'] ?? '',
        ),
      ],
    );
  }

  Widget _circullarPercentItem(
    BuildContext context, {
    required String type,
    required String subType,
    required String value,
    required double percent,
  }) {
    return Row(
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
        const Gap(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: context.textTheme.bodyMedium?.bold,
            ),
            const Gap(4),
            Text(
              subType,
              style: context.textTheme.bodyMedium,
            )
          ],
        )
      ],
    );
  }

  Widget _circullarCharacterItem(
    BuildContext context, {
    required String type,
    required String value,
  }) {
    return Row(
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
        const Gap(16),
        Text(
          type,
          style: context.textTheme.bodyMedium?.bold,
        )
      ],
    );
  }
}
