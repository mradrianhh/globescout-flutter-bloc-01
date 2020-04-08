import 'package:equatable/equatable.dart';
import 'package:player_repository/player_repository.dart';

abstract class PlayersEvent extends Equatable {
  const PlayersEvent();

  @override
  List<Object> get props => [];
}

class LoadPlayers extends PlayersEvent {}

class AddPlayer extends PlayersEvent {
  final Player player;

  const AddPlayer(this.player);

  @override
  List<Object> get props => [player];

  @override
  String toString() => 'AddTodo { todo: $player }';
}

class UpdatePlayer extends PlayersEvent {
  final Player updatedPlayer;

  const UpdatePlayer(this.updatedPlayer);

  @override
  List<Object> get props => [updatedPlayer];

  @override
  String toString() => 'UpdateTodo { updatedTodo: $updatedPlayer }';
}

class DeletePlayer extends PlayersEvent {
  final Player player;

  const DeletePlayer(this.player);

  @override
  List<Object> get props => [player];

  @override
  String toString() => 'DeleteTodo { todo: $player }';
}

class PlayersUpdated extends PlayersEvent {
  final List<Player> players;

  const PlayersUpdated(this.players);

  @override
  List<Object> get props => [players];
}