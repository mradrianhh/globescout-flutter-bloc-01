import "dart:async";
import "../team_repository.dart";

abstract class TeamRepository {
  Future<void> addNewTeam(Team team);
  Future<void> deleteTeam(Team team);
  Stream<List<Team>> teams();
  Future<void> updateTeam(Team team);
}