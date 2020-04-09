import "dart:async";

import 'package:cloud_firestore/cloud_firestore.dart';

import "../scouting_repository.dart";
import "entities/entities.dart";

class FirebaseScoutingRepository implements ScoutingRepository {
  final scoutingCollection = Firestore.instance.collection("scoutings");

  @override
  Future<void> addNewScouting(Scouting scouting) {
    return scoutingCollection.add(scouting.toEntity().toDocument());
  }

  @override
  Future<void> deleteScouting(Scouting scouting) {
    return scoutingCollection.document(scouting.id).delete();
  }

  @override
  Stream<List<Scouting>> scoutings() {
    return scoutingCollection.snapshots().map((snapshot) {
      return snapshot.documents.map((doc) => Scouting.fromEntity(ScoutingEntity.fromSnapshot(doc))).toList();
    });
  }

  @override
  Future<void> updateScouting(Scouting scouting) {
    return scoutingCollection.document(scouting.id).updateData(scouting.toEntity().toDocument());
  }
}