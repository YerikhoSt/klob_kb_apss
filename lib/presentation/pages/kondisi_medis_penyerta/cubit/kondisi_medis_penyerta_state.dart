import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/model/question_model.dart';

sealed class KondisiMedisPenyertaState {
  const KondisiMedisPenyertaState();
}

final class KondisiMedisPenyertaInitial extends KondisiMedisPenyertaState {}

final class ItemLoaded extends KondisiMedisPenyertaState {
  final List<Question> data;

  const ItemLoaded(this.data);
}
