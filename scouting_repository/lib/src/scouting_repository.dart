import "dart:async";

import "../scouting_repository.dart";

abstract class ScoutingRepository{
  Future<void> addNewScouting(Scouting scouting);

  Future<void> deleteScouting(Scouting scouting);

  Stream<List<Scouting>> scoutings();

  Future<void> updateScouting(Scouting scouting);
}