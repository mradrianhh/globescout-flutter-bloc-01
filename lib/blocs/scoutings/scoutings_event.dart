import 'package:equatable/equatable.dart';
import 'package:scouting_repository/scouting_repository.dart';

abstract class ScoutingsEvent extends Equatable {
  const ScoutingsEvent();

  @override
  List<Object> get props => [];
}

class LoadScoutings extends ScoutingsEvent {}

class AddScouting extends ScoutingsEvent {
  final Scouting scouting;

  const AddScouting(this.scouting);

  @override
  List<Object> get props => [scouting];

  @override
  String toString() => "AddScouting {scouting:$scouting}";
}

class UpdateScouting extends ScoutingsEvent {
  final Scouting updatedScouting;

  const UpdateScouting(this.updatedScouting);

  @override
  List<Object> get props => [updatedScouting];

  @override
  String toString() => "UpdateScouting {updatedScouting:$updatedScouting}";
}

class DeleteScouting extends ScoutingsEvent {
  final Scouting scouting;

  const DeleteScouting(this.scouting);

  @override
  List<Object> get props => [scouting];

  @override
  String toString() => "DeleteScouting {scouting: $scouting}";
}

class ScoutingsUpdated extends ScoutingsEvent {
  final List<Scouting> scoutings;

  const ScoutingsUpdated(this.scoutings);

  @override
  List<Object> get props => [scoutings];
}
