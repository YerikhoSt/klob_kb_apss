import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../config/theme/app_colors.dart';
import 'prosedur_sebelum_penggunaan_model.dart';

class ProsedurSebelumPenggunaanDataSource extends DataGridSource {
  ProsedurSebelumPenggunaanDataSource(
      {required List<ProsedurSebelumPenggunaanModel>
          prosedurSebelumPenggunaan}) {
    dataGridRows = prosedurSebelumPenggunaan
        .map<DataGridRow>((dataGridRow) => DataGridRow(
              cells: [
                DataGridCell<String>(
                  columnName: 'prosedur',
                  value: dataGridRow.prosedur,
                ),
                DataGridCell<String>(
                    columnName: 'kontrasepsiKombinasi',
                    value: dataGridRow.kontrasepsiKombinasi),
                DataGridCell<String>(
                    columnName: 'suntikanKombinasi',
                    value: dataGridRow.suntikanKombinasi),
                DataGridCell<String>(
                  columnName: 'pilPogestin',
                  value: dataGridRow.pilPogestin,
                ),
                DataGridCell<String>(
                    columnName: 'suntikanPogestin',
                    value: dataGridRow.suntikanPogestin),
                DataGridCell<String>(
                    columnName: 'implan', value: dataGridRow.implan),
                DataGridCell<String>(columnName: 'iud', value: dataGridRow.iud),
                DataGridCell<String>(
                    columnName: 'koyoKombinasi',
                    value: dataGridRow.koyoKombinasi),
                DataGridCell<String>(
                    columnName: 'cincinVagina',
                    value: dataGridRow.cincinVagina),
                DataGridCell<String>(
                    columnName: 'spermisida', value: dataGridRow.spermisida),
                DataGridCell<String>(
                    columnName: 'tubektomi', value: dataGridRow.tubektomi),
                DataGridCell<String>(
                    columnName: 'vasektomi', value: dataGridRow.vasektomi),
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
      final int index = effectiveRows.indexOf(row);

      return Container(
          color: _getDefaultBackgroundColor(
            index: effectiveRows.indexOf(row),
            isAKDR: dataGridCell.columnName == 'iud',
            isDiafragma: dataGridCell.columnName == 'cincinVagina',
            isTubektomi: dataGridCell.columnName == 'tubektomi',
            isVasektomi: dataGridCell.columnName == 'vasektomi',
          ),
          alignment: (dataGridCell.columnName == 'prosedur')
              ? Alignment.centerLeft
              : Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value.toString(),
            softWrap: true,
          ));
    }).toList());
  }

  Color _getDefaultBackgroundColor(
      {required int index,
      required bool isAKDR,
      required bool isDiafragma,
      required bool isTubektomi,
      required bool isVasektomi}) {
    if (index % 2 != 1) {
      return AppColors.bgTabel1;
    } else if (isAKDR && index == 1 || isAKDR && index == 5) {
      return AppColors.bgTabelRed;
    } else if (isAKDR && index == 4 || isAKDR && index == 6) {
      return AppColors.bgTabel3;
    } else if (isDiafragma && index == 1) {
      return AppColors.bgTabelRed;
    } else if (isTubektomi && index == 1 || isTubektomi && index == 7) {
      return AppColors.bgTabelRed;
    } else if (index % 2 == 1 && isTubektomi && index == 4) {
      return AppColors.bgTabel3;
    } else if (isVasektomi && index == 1) {
      return AppColors.bgTabelRed;
    } else {
      return AppColors.bgTabel2;
    }
  }
}
