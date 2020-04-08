import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:team_repository/team_repository.dart';

import 'teams.dart';

class TeamsBloc extends Bloc<TeamsEvent, TeamsState> {
  final TeamRepository _teamRepository;
  StreamSubscription _teamsSubscription;

  TeamsBloc({@required TeamRepository teamRepository}) : assert(teamRepository != null), _teamRepository = teamRepository;

  @override
  TeamsState get initialState => TeamsLoading();

  @override
  Stream<TeamsState> mapEventToState(TeamsEvent event) async* {
    if(event is LoadTeams) {
      yield* _mapLoadTeamsToState();
    } else if(event is AddTeam) {
      yield* _mapAddTeamToState(event);
    } else if(event is UpdateTeam){
      yield* _mapUpdateTeamToState(event);
    } else if(event is DeleteTeam){
      yield* _mapDeleteTeamToState(event);
    } else if(event is TeamsUpdated){
      yield* _mapTeamsUpdatedToState(event);
    }
  }

  Stream<TeamsState> _mapLoadTeamsToState() async* {
    _teamsSubscription?.cancel();
    _teamsSubscription = _teamRepository.teams().listen((teams) => add(TeamsUpdated(teams)));
  }

  Stream<TeamsState> _mapAddTeamToState(AddTeam event) async* {
    _teamRepository.addNewTeam(event.team);
  }

  Stream<TeamsState> _mapUpdateTeamToState(UpdateTeam event) async* {
    _teamRepository.updateTeam(event.updatedTeam);
  }
  
  Stream<TeamsState> _mapDeleteTeamToState(DeleteTeam event) async* {
    _teamRepository.deleteTeam(event.team);
  }

  Stream<TeamsState> _mapTeamsUpdatedToState(TeamsUpdated event) async* {
    yield TeamsLoaded(event.teams);
  }

  @override
  Future<void> close() {
    _teamsSubscription?.cancel();
    return super.close();
  }
}