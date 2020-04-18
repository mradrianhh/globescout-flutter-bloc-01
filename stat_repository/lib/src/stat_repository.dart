import "dart:async";

import "../stat_repository.dart";

abstract class StatRepository {
  Future<void> addNewStat(Stat stat);

  Future<void> deleteStat(Stat stat);

  Stream<List<Stat>> stats();

  Future<void> updateStat(Stat stat);
}