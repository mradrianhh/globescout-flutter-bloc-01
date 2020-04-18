import 'package:cloud_firestore/cloud_firestore.dart';

import '../stat_repository.dart';
import "entities/entities.dart";

class FirebaseStatRepository implements StatRepository {
  final statCollection = Firestore.instance.collection("stats");

  @override
  Future<void> addNewStat(Stat stat) {
    return statCollection.add(stat.toEntity().toDocument());
  }

  @override
  Future<void> deleteStat(Stat stat) {
    return statCollection.document(stat.id).delete();
  }

  @override
  Stream<List<Stat>> stats() {
    return statCollection.snapshots().map((snapshot) {
      return snapshot.documents.map((doc) => Stat.fromEntity(StatEntity.fromSnapshot(doc))).toList();
    });
  }

  @override
  Future<void> updateStat(Stat stat) {
    return statCollection.document(stat.id).updateData(stat.toEntity().toDocument());
  }

}