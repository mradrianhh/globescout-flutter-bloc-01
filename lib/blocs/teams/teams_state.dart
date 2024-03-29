import 'package:equatable/equatable.dart';
import 'package:team_repository/team_repository.dart';

abstract class TeamsState extends Equatable{
  const TeamsState();

  @override
  List<Object> get props => [];
}

class TeamsLoading extends TeamsState {}

class TeamsLoaded extends TeamsState {
  final List<Team> teams;

  const TeamsLoaded([this.teams = const []]);

  @override
  List<Object> get props => [teams];

  @override
  String toString() => "TeamsLoaded {teams:$teams}";
}

class TeamsNotLoaded extends TeamsState{}