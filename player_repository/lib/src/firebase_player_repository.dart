import "dart:async";

import 'package:cloud_firestore/cloud_firestore.dart';

import '../player_repository.dart';
import 'entities/entities.dart';

class FirebasePlayerRepository implements PlayerRepository {
  final playerCollection = Firestore.instance.collection("players");

  @override
  Future<void> addNewPlayer(Player player) {
    return playerCollection.add(player.toEntity().toDocument());
  }

  @override
  Future<void> deletePlayer(Player player) {
    return playerCollection.document(player.id).delete();
  }

  @override
  Stream<List<Player>> players() {
    return playerCollection.snapshots().map((snapshot) {
      return snapshot.documents.map((doc) => Player.fromEntity(PlayerEntity.fromSnapshot(doc))).toList();
    });
  }

  @override
  Future<void> updatePlayer(Player player) {
    return playerCollection.document(player.id).updateData(player.toEntity().toDocument());
  }

}