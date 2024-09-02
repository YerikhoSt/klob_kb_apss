

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/cubit/penapisan_kehamilan_cubit.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/model/penapisan_kehamilan_question_model.dart';

class PenapisanKehamilanCubit extends Cubit<PenapisanKehamilanState> {
  PenapisanKehamilanCubit() : super(PenapisanKehamilanInitial());

  void loadData() {
    final data = PenapisanKehamilanQuestionModel.getListQuestion();
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
}