import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/model/penapisan_kehamilan_question_model.dart';

sealed class PenapisanKehamilanState {
  const PenapisanKehamilanState();
}

final class PenapisanKehamilanInitial extends PenapisanKehamilanState {}

final class ItemLoaded extends PenapisanKehamilanState {
  final List<PenapisanKehamilanQuestionModel> data;

  const ItemLoaded(this.data);
}
