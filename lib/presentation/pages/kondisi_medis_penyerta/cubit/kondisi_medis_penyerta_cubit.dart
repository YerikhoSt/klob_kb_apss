import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/cubit/kondisi_medis_penyerta_state.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/model/question_model.dart';

class KondisiMedisPenyertaCubit extends Cubit<KondisiMedisPenyertaState> {
  KondisiMedisPenyertaCubit() : super(KondisiMedisPenyertaInitial());

  void loadData() {
    final data = Question.getListQuestion();
    emit(ItemLoaded(data));
  }

  void editItem(int index, String value) {
    final currentState = state;
    if (currentState is ItemLoaded) {
      final data = currentState.data;
      data[index].selectedOption = value;
      emit(ItemLoaded(data));
    }
  }

  void expandItem(int index) {
    final currentState = state;
    if (currentState is ItemLoaded) {
      final data = currentState.data;
      data[index].isExpanded = !data[index].isExpanded;
      emit(ItemLoaded(data));
    }
  }
}
