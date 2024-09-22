import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/cubit/kondisi_medis_penyerta_state.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/model/question_model.dart';

class KondisiMedisPenyertaCubit extends Cubit<KondisiMedisPenyertaState> {
  KondisiMedisPenyertaCubit() : super(KondisiMedisPenyertaInitial());

  List<Question> questionData = Question.getListQuestion();
  Map<String, String> mergedMap = {};

  final List<Map<String, String>> criteriaData = [];

  void loadData() {
    emit(ItemLoaded(questionData));
  }

  void editItem(int index, String? value) {
    questionData[index].selectedOption = value;
    emit(ItemLoaded(questionData));
  }

  void expandItem(int index) {
    questionData[index].isExpanded = !questionData[index].isExpanded;
    emit(ItemLoaded(questionData));
  }

  void selectedOption(int index, String? value) {
    final selectedIndex =
        questionData[index].options.indexWhere((element) => element == value);
    final selectedItem = questionData[index].criteria[selectedIndex];

    emit(SelectedMapItemState(selectedItem, index));
  }

  void updateSelectedDataMap(Map<String, String> data, int index) {
    final currentState = state;

    if (currentState is SelectedMapItemState) {
      if (isIdExist(criteriaData, data['type'] as String) &&
          criteriaData.isNotEmpty) {
        int selectedIndex = criteriaData.indexWhere(
          (element) => element['type'] == data['type'],
        );
        criteriaData[selectedIndex] = data;
      } else {
        criteriaData.add(data);
      }
      emit(DataMapItemState(
        criteriaData,
      ));
    }
  }

  void mergeMaps(List<Map<String, String>> dataList) {
    Map<String, String> merged = {};
    List<Map<String, String>> filteredDataList =
        dataList.where((item) => item['option'] != 'Tidak').toList();

    if (filteredDataList.isNotEmpty) {
      for (var map in dataList) {
        map.forEach((key, value) {
          if (key == 'type') {
            merged[key] = value;
          } else if (key == 'option') {
            merged[key] = value;
          } else {
            if (merged.containsKey(key)) {
              merged[key] =
                  merged[key]!.compareTo(value) > 0 ? merged[key]! : value;
            } else {
              merged[key] = value;
            }
          }
        });
      }
    }
    mergedMap = merged;
    emit(MergedMapItemState(merged));
  }

  bool isIdExist(List<Map<String, String>> dataList, String idToCheck) {
    for (var data in dataList) {
      if (data['type'] == idToCheck) {
        return true; // ID ditemukan
      }
    }
    return false; // ID tidak ditemukan
  }
}
