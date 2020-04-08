import 'package:cloud_firestore/cloud_firestore.dart';

import "../team_repository.dart";
import "entities/entities.dart";

class FirebaseTeamRepository implements TeamRepository {
  final teamCollection = Firestore.instance.collection("teams");

  @override
  Future<void> addNewTeam(Team team) {
    return teamCollection.add(team.toEntity().toDocument());
  }

  @override
  Future<void> deleteTeam(Team team) {
    return teamCollection.document(team.id).delete();
  }

  @override
  Stream<List<Team>> teams() {
    return teamCollection.snapshots().map((snapshot) {
      return snapshot.documents.map((doc) => Team.fromEntity(TeamEntity.fromSnapshot(doc))).toList();
    });
  }

  @override
  Future<void> updateTeam(Team team) {
    return teamCollection.document(team.id).updateData(team.toEntity().toDocument());
  }

}