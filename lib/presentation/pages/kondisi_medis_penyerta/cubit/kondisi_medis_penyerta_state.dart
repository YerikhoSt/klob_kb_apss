import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/model/question_model.dart';

sealed class KondisiMedisPenyertaState {
  const KondisiMedisPenyertaState();
}

final class KondisiMedisPenyertaInitial extends KondisiMedisPenyertaState {}

final class ItemLoaded extends KondisiMedisPenyertaState {
  final List<Question> data;

  const ItemLoaded(this.data);
}

final class MergedMapItemState extends KondisiMedisPenyertaState {
  final Map<String, String> mergedMap;

  const MergedMapItemState(
    this.mergedMap,
  );
}

final class DataMapItemState extends KondisiMedisPenyertaState {
  final List<Map<String, String>>? dataMapItem;

  const DataMapItemState(this.dataMapItem);
}

final class SelectedMapItemState extends KondisiMedisPenyertaState {
  final Map<String, String> mapItem;
  final int index;

  const SelectedMapItemState(
    this.mapItem,
    this.index,
  );
}
