import 'package:flutter/material.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/data/efektivitas_metode_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../config/theme/app_colors.dart';

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
      if (dataGridCell.columnName == 'metode') {
        final int index = effectiveRows.indexOf(row);
        return Container(
            color: (index % 2 == 0 && index != 22)
                ? AppColors.primaryShade400.withAlpha(130)
                : AppColors.primaryShade100.withAlpha(150),
            alignment: (dataGridCell.columnName == 'metode')
                ? Alignment.centerLeft
                : Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              dataGridCell.value.toString(),
              softWrap: true,
            ));
      }

      if (dataGridCell.columnName == 'dipakaiKonsisten') {
        final int index = effectiveRows.indexOf(row);
        return Container(
            color: _getDipakaiKonsistenColor(index),
            alignment: (dataGridCell.columnName == 'metode')
                ? Alignment.centerLeft
                : Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              dataGridCell.value.toString(),
              softWrap: true,
            ));
      }

      if (dataGridCell.columnName == 'dipakaiBiasa') {
        final int index = effectiveRows.indexOf(row);
        return Container(
            color: _getDipakaiBiasaColor(index),
            alignment: (dataGridCell.columnName == 'metode')
                ? Alignment.centerLeft
                : Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              dataGridCell.value.toString(),
              softWrap: true,
            ));
      }

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

  Color _getDipakaiKonsistenColor(int index) {
    if (index == 21) {
      return AppColors.bgTabel3;
    } else if (index > 11 && index <= 17 || index == 19) {
      return AppColors.bgTabel1;
    } else if (index == 22 || index == 20 || index == 18) {
      return AppColors.bgTabel2;
    } else {
      return AppColors.transparent;
    }
  }

  Color _getDipakaiBiasaColor(int index) {
    if (index > 18 && index <= 21) {
      return AppColors.bgTabel3;
    } else if (index >= 5 && index <= 11 || index == 13 || index == 15) {
      return AppColors.bgTabel1;
    } else if (index >= 16 && index <= 18 ||
        index == 22 ||
        index == 14 ||
        index == 12) {
      return AppColors.bgTabel2;
    } else {
      return AppColors.transparent;
    }
  }
}
