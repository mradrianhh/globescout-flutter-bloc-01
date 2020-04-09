import 'package:equatable/equatable.dart';
import 'package:player_repository/player_repository.dart';

abstract class PlayersState extends Equatable {
  const PlayersState();

  @override
  List<Object> get props => [];
}

class PlayersLoading extends PlayersState {}

class PlayersLoaded extends PlayersState {
  final List<Player> players;

  const PlayersLoaded([this.players = const []]);

  @override
  List<Object> get props => [players];

  @override
  String toString() => 'PlayersLoaded { players: $players }';
}

class PlayersNotLoaded extends PlayersState {}