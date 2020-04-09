import 'package:equatable/equatable.dart';
import 'package:scouting_repository/scouting_repository.dart';


abstract class ScoutingsState extends Equatable {
  const ScoutingsState();

  @override
  List<Object> get props => [];
}

class ScoutingsLoading extends ScoutingsState {}

class ScoutingsLoaded extends ScoutingsState {
  final List<Scouting> scoutings;

  const ScoutingsLoaded([this.scoutings = const[]]);

  @override
  List<Object> get props => [scoutings];

  @override
  String toString() => "ScoutingsLoaded {scoutings: $scoutings}";
}

class ScoutingsNotLoaded extends ScoutingsState {}