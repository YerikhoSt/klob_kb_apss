import 'package:flutter/material.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/data/efektivitas_metode_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class EfektivitasMetodeDataSource extends DataGridSource {
  EfektivitasMetodeDataSource(
      {required List<EfektivitasMetodeModel> efektivitasMetode}) {
    dataGridRows = efektivitasMetode
        .map<DataGridRow>((dataGridRow) => DataGridRow(
              cells: [
                DataGridCell<String>(
                    columnName: 'metode', value: dataGridRow.metode),
                DataGridCell<String>(
                    columnName: 'dipakaiKonsisten',
                    value: dataGridRow.dipakaiKonsisten),
                DataGridCell<String>(
                    columnName: 'dipakaiBiasa',
                    value: dataGridRow.dipakaiBiasa),
              ],
            ))
        .toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: (dataGridCell.columnName == 'metode')
              ? Alignment.centerLeft
              : Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value.toString(),
            softWrap: true,
          ));
    }).toList());
  }
}
