import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/helper/bottom_sheet_helper.dart';
import 'package:klob_kb_apps/presentation/component/bottom_sheet/bottom_sheet_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/data/efektivitas_metode_data_source.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/data/efektivitas_metode_model.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../config/theme/app_colors.dart';
import '../../component/app_bar/app_bar.dart';
import '../../component/widget/wrapper/card_wrapper.dart';

@RoutePage()
class EfektivitasMetodeKontrasepsiPage extends StatefulWidget {
  const EfektivitasMetodeKontrasepsiPage({super.key});

  @override
  State<EfektivitasMetodeKontrasepsiPage> createState() =>
      _EfektivitasMetodeKontrasepsiPageState();
}

class _EfektivitasMetodeKontrasepsiPageState
    extends State<EfektivitasMetodeKontrasepsiPage> {
  late EfektivitasMetodeDataSource _datasource;
  List<EfektivitasMetodeModel> _efektivitasMetode = [];

  @override
  void initState() {
    super.initState();
    _efektivitasMetode = EfektivitasMetodeModel.getEfektivitasMetodeData();
    _datasource =
        EfektivitasMetodeDataSource(efektivitasMetode: _efektivitasMetode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildBody(context, _datasource),
    );
  }

  Widget _buildBody(
      BuildContext context, EfektivitasMetodeDataSource datasource) {
    return SfDataGrid(
      source: datasource,
      columnWidthMode: ColumnWidthMode.fill,
      onQueryRowHeight: (details) {
        return details.rowIndex == 0 ? 120 : 60;
      },
      gridLinesVisibility: GridLinesVisibility.both,
      headerGridLinesVisibility: GridLinesVisibility.both,
      columns: [
        GridColumn(
            columnName: 'metode',
            label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Text(
                  'Metode Kontrasepsi',
                  softWrap: true,
                  style: context.bodyMedium?.bold.toColor(AppColors.neutral100),
                  textAlign: TextAlign.center,
                ))),
        GridColumn(
            columnName: 'dipakaiKonsisten',
            label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                alignment: Alignment.center,
                child: Text(
                  'Dipakai secara tepat dan konsisten',
                  style: context.bodyMedium?.bold.toColor(AppColors.neutral100),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ))),
        GridColumn(
            columnName: 'dipakaiBiasa',
            label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                alignment: Alignment.center,
                child: Text(
                  'Dipakai secara biasa',
                  style: context.bodyMedium?.bold.toColor(AppColors.neutral100),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ))),
      ],
      frozenColumnsCount: 1,
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return PrimaryAppBar(
      title: 'Efektivitas Metode Kontrasepsi',
      actions: [
        Center(
          child: CardWrapper(
              width: 40,
              height: 40,
              backgroundColor: AppColors.neutral10,
              borderRadius: BorderRadius.circular(40),
              isInkWellOnTop: true,
              splashColor: AppColors.primaryMain,
              borderWidth: 2,
              onTap: () => _showModalBottomSheet(context),
              child: Center(
                child: SvgPicture.asset(
                  AppIcons.info,
                  height: 24,
                ),
              )),
        ),
      ],
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    BottomSheetHelper.showBottomSheet(
      context,
      builder: (context) {
        return PrimaryBottomSheetWrapper(
          child: CustomColumn(children: [
            Text(
              'PEDOMAN',
              style: context.textTheme.bodyLarge?.bold
                  .toColor(AppColors.neutral100),
            ),
            const Gap(Sizes.p16),
            Row(
              children: [
                Text(
                  '0 - 0.9',
                  style: const TextStyle().medium.toSize(14),
                ),
                const Gap(Sizes.p16),
                Text(
                  'Sangat Efektif',
                  style: const TextStyle().medium.toSize(14),
                ),
              ],
            ),
            const Gap(Sizes.p8),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    '1 - 9',
                    style: const TextStyle().medium.toSize(14),
                  ),
                ),
                const Gap(Sizes.p16),
                Text(
                  'Efektif',
                  style: const TextStyle().medium.toSize(14),
                ),
              ],
            ),
            const Gap(Sizes.p8),
            Row(
              children: [
                Text(
                  '10 - 25',
                  style: const TextStyle().medium.toSize(14),
                ),
                const Gap(Sizes.p16),
                Text(
                  'Cukup Efektif',
                  style: const TextStyle().medium.toSize(14),
                ),
              ],
            ),
            const Gap(Sizes.p8),
            Row(
              children: [
                Text(
                  '26 - 32',
                  style: const TextStyle().medium.toSize(14),
                ),
                const Gap(Sizes.p16),
                Text(
                  'Kurang Efektif',
                  style: const TextStyle().medium.toSize(14),
                ),
              ],
            ),
          ]),
        );
      },
    );
  }
}
