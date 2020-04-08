import "dart:async";

import '../player_repository.dart';

abstract class PlayerRepository{
  Future<void> addNewPlayer(Player player);

  Future<void> deletePlayer(Player player);

  Stream<List<Player>> players();

  Future<void> updatePlayer(Player player);
}