import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:player_repository/player_repository.dart';

import 'players.dart';

class PlayersBloc extends Bloc<PlayersEvent, PlayersState>{
  final PlayerRepository _playerRepository;
  StreamSubscription _playersSubscription;

  PlayersBloc({@required PlayerRepository playerRepository}) : assert(playerRepository != null), _playerRepository = playerRepository;

  @override
  PlayersState get initialState => PlayersLoading();

  @override
  Stream<PlayersState> mapEventToState(PlayersEvent event) async* {
    if (event is LoadPlayers) {
      yield* _mapLoadPlayersToState();
    } else if (event is AddPlayer) {
      yield* _mapAddPlayerToState(event);
    } else if (event is UpdatePlayer) {
      yield* _mapUpdatePlayerToState(event);
    } else if (event is DeletePlayer) {
      yield* _mapDeletePlayerToState(event);
    } else if (event is PlayersUpdated) {
      yield* _mapPlayersUpdatedToState(event);
    }
  }

  Stream<PlayersState> _mapLoadPlayersToState() async* {
    _playersSubscription?.cancel();
    _playersSubscription = _playerRepository.players().listen((players) => add(PlayersUpdated(players)));
  }

  Stream<PlayersState> _mapAddPlayerToState(AddPlayer event) async* {
    _playerRepository.addNewPlayer(event.player);
  }

  Stream<PlayersState> _mapUpdatePlayerToState(UpdatePlayer event) async* {
    _playerRepository.updatePlayer(event.updatedPlayer);
  }

  Stream<PlayersState> _mapDeletePlayerToState(DeletePlayer event) async* {
    _playerRepository.deletePlayer(event.player);
  }

  Stream<PlayersState> _mapPlayersUpdatedToState(PlayersUpdated event) async* {
    yield PlayersLoaded(event.players);
  }

  @override
  Future<void> close() {
    _playersSubscription?.cancel();
    return super.close();
  }

}