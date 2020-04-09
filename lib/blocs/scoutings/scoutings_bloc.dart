
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:scouting_repository/scouting_repository.dart';

import "scoutings.dart";

class ScoutingsBloc extends Bloc<ScoutingsEvent, ScoutingsState> {
  final ScoutingRepository _scoutingRepository;
  StreamSubscription _scoutingsSubscription;

  ScoutingsBloc({@required ScoutingRepository scoutingRepository}) : assert(scoutingRepository != null), _scoutingRepository = scoutingRepository;

  @override
  ScoutingsState get initialState => ScoutingsLoading();

  @override
  Stream<ScoutingsState> mapEventToState(ScoutingsEvent event) async* {
    if(event is LoadScoutings) {
      yield* _mapLoadScoutingsToState();
    } else if(event is AddScouting){
      yield* _mapAddScoutingToState(event);
    } else if(event is UpdateScouting) {
      yield* _mapUpdateScoutingToState(event);
    } else if(event is DeleteScouting) {
      yield* _mapDeleteScoutingToState(event);
    } else if(event is ScoutingsUpdated){
      yield* _mapScoutingsUpdatedToState(event);
    }
  }

  Stream<ScoutingsState> _mapLoadScoutingsToState() async* {
    _scoutingsSubscription?.cancel();
    _scoutingsSubscription = _scoutingRepository.scoutings().listen((scoutings) => add(ScoutingsUpdated(scoutings)));
  }

  Stream<ScoutingsState> _mapAddScoutingToState(AddScouting event) async* {
    _scoutingRepository.addNewScouting(event.scouting);
  }

  Stream<ScoutingsState> _mapUpdateScoutingToState(UpdateScouting event) async* {
    _scoutingRepository.updateScouting(event.updatedScouting);
  }

  Stream<ScoutingsState> _mapDeleteScoutingToState(DeleteScouting event) async* {
    _scoutingRepository.deleteScouting(event.scouting);
  }

  Stream<ScoutingsState> _mapScoutingsUpdatedToState(ScoutingsUpdated event) async* {
    yield ScoutingsLoaded(event.scoutings);
  }

  @override
  Future<void> close() {
    _scoutingsSubscription?.cancel();
    return super.close();
  }



}