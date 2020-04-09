
import 'package:meta/meta.dart';

import "../entities/entities.dart";

@immutable
class Scouting {
  final String id;
  final String title;
  final String playerId;
  final String playerTeam;
  final String opposingTeam;

  Scouting({String id, String title = "", String playerId = "", String playerTeam = "", String opposingTeam = ""})
  : this.id = id, this.title = title ?? "", this.playerId = playerId ?? "", this.playerTeam = playerTeam ?? "", this.opposingTeam = opposingTeam ?? "";

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ playerId.hashCode ^ playerTeam.hashCode ^ opposingTeam.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) ||
                                    other is Scouting && 
                                    runtimeType == other.runtimeType &&
                                    id == other.id &&
                                    playerId == other.playerId &&
                                    playerTeam == other.playerTeam &&
                                    opposingTeam == other.opposingTeam;

  @override
  String toString() {
    return "Scouting {id: $id, title: $title, playerId: $playerId, playerTeam: $playerTeam, opposingTeam: $opposingTeam";
  }

  Scouting copyWith({String id, String title, String playerId, String playerTeam, String opposingTeam}){
    return Scouting(
      id: id ?? this.id,
      title: title ?? this.title,
      playerId: playerId ?? this.playerId,
      playerTeam: playerTeam ?? this.playerTeam,
      opposingTeam: opposingTeam ?? this.opposingTeam
    );
  }

  ScoutingEntity toEntity() {
    return ScoutingEntity(id, title, playerId, playerTeam, opposingTeam);
  }

  static Scouting fromEntity(ScoutingEntity entity) {
    return Scouting(
      id: entity.id,
      title: entity.title,
      playerId: entity.playerId,
      playerTeam: entity.playerTeam,
      opposingTeam: entity.opposingTeam
    );
  }
}