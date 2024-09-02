import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/bottom_sheet/bottom_sheet_wrapper.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/card_wrapper.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/prosedur_sebelum_penggunaan/data/prosedur_sebelum_penggunaan_data_source.dart';
import 'package:klob_kb_apps/presentation/pages/prosedur_sebelum_penggunaan/data/prosedur_sebelum_penggunaan_model.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../helper/bottom_sheet_helper.dart';

@RoutePage()
class ProsedurSebelumPenggunaanPage extends StatefulWidget {
  const ProsedurSebelumPenggunaanPage({super.key});

  @override
  State<ProsedurSebelumPenggunaanPage> createState() =>
      _ProsedurSebelumPenggunaanPageState();
}

class _ProsedurSebelumPenggunaanPageState
    extends State<ProsedurSebelumPenggunaanPage> {
  late ProsedurSebelumPenggunaanDataSource _datasource;
  List<ProsedurSebelumPenggunaanModel> _prosedurSebelumPenggunaanData = [];

  @override
  void initState() {
    super.initState();
    _prosedurSebelumPenggunaanData =
        ProsedurSebelumPenggunaanModel.getProsedurSebelumPenggunaanData();
    _datasource = ProsedurSebelumPenggunaanDataSource(
        prosedurSebelumPenggunaan: _prosedurSebelumPenggunaanData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildBody(context, _datasource),
    );
  }

  Widget _buildBody(
      BuildContext context, ProsedurSebelumPenggunaanDataSource datasource) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 16),
      child: SfDataGrid(
        source: datasource,
        onQueryRowHeight: (details) {
          // return details.getIntrinsicRowHeight(details.rowIndex);
          return details.rowIndex == 0 ? 75 : 60;
        },
        columns: [
          GridColumn(
              width: 200,
              columnName: 'prosedur',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Prosedur',
                    softWrap: true,
                    style: context.bodyMedium?.bold,
                  ))),
          GridColumn(
              width: 120,
              columnName: 'kontrasepsiKombinasi',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Kontrasepsi Kombinasi',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: context.bodyMedium?.bold,
                  ))),
          GridColumn(
              width: 120,
              columnName: 'suntikanKombinasi',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Suntikan Kombinasi',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'pilPogestin',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Pil Pogestin',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'suntikanPogestin',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Suntikan Pogestin',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'implan',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Implan',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'iud',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('OUD/AKDR',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'koyoKombinasi',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Koyo Kombinasi',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'cincinVagina',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Cincin Vagina',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'spermisida',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Spermisida',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'tubektomi',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Tubektomi',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
          GridColumn(
              width: 120,
              columnName: 'vasektomi',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text('Vasektomi',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: context.bodyMedium?.bold))),
        ],
        frozenColumnsCount: 1,
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    BottomSheetHelper.showBottomSheet(
      context,
      builder: (context) {
        return PrimaryBottomSheetWrapper(
          child: CustomColumn(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'A',
                  style: const TextStyle().medium.toSize(14),
                ),
                const Gap(16),
                Expanded(
                  child: RichText(
                    softWrap: true,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'HARUS DIKERJAKAN, ',
                          style: context.textTheme.bodySmall?.bold),
                      TextSpan(
                          text:
                              'karena prosedur ini esensial bagi keamanan dan efektivitas pemakaian',
                          style: context.textTheme.bodySmall),
                    ]),
                  ),
                )
              ],
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'B',
                  style: const TextStyle().medium.toSize(14),
                ),
                const Gap(16),
                Expanded(
                  child: RichText(
                    softWrap: true,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'BISA DIKERJAKAN, ',
                          style: context.textTheme.bodySmall?.bold),
                      TextSpan(
                          text:
                              'karena karena mempunyai dampak pada keamanan dan efektivitas pemakaian',
                          style: context.textTheme.bodySmall),
                    ]),
                  ),
                )
              ],
            ),
            const Gap(12),
            Row(
              children: [
                Text(
                  'C',
                  style: const TextStyle().medium.toSize(14),
                ),
                const Gap(16),
                Text(
                  'TIDAK PERLU DIKERJAKAN',
                  style:
                      context.textTheme.bodySmall?.bold.copyWith(fontSize: 14),
                ),
              ],
            ),
          ]),
        );
      },
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return PrimaryAppBar(
      title: 'Prosedur sebelum Penggunaan Metode Kontrasepsi',
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
}
