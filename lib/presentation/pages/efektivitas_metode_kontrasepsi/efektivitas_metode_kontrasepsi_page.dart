import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/data/efektivitas_metode_data_source.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/data/efektivitas_metode_model.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../component/app_bar/app_bar.dart';

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
      appBar: const PrimaryAppBar(
        title: 'Efektivitas Metode Kontrasepsi',
      ),
      body: _buildBody(context, _datasource),
    );
  }

  Widget _buildBody(
      BuildContext context, EfektivitasMetodeDataSource datasource) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 16),
      child: SfDataGrid(
        source: datasource,
        onQueryRowHeight: (details) {
          // return details.getIntrinsicRowHeight(details.rowIndex);
          return details.rowIndex == 0 ? 80 : 60;
        },
        columns: [
          GridColumn(
              width: 200,
              columnName: 'metode',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Metode Kontrasepsi',
                    softWrap: true,
                    style: const TextStyle().bold.toSize(16),
                  ))),
          GridColumn(
              columnName: 'dipakaiKonsisten',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Dipakai secara tepat dan konsisten',
                    style: const TextStyle().bold,
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ))),
          GridColumn(
              columnName: 'dipakaiBiasa',
              label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Dipakai secara biasa',
                    style: const TextStyle().bold,
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ))),
        ],
        frozenColumnsCount: 1,
      ),
    );
  }
}
