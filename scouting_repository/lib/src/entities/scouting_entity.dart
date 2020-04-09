import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ScoutingEntity extends Equatable{
  final String id;
  final String title;
  final String playerId;
  final String playerTeam;
  final String opposingTeam;

  ScoutingEntity(this.id, this.title, this.playerId, this.playerTeam, this.opposingTeam);

  @override
  List<Object> get props => [id, title, playerId, playerTeam, opposingTeam];

  @override
  String toString() {
    return "ScoutingEntity {id: $id, title: $title, playerId: $playerId, playerTeam: $playerTeam, opposingTeam: $opposingTeam";
  }

  Map<String, Object> toJson() {
    return {
      "id": id,
      "title": title,
      "playerId": playerId,
      "playerTeam": playerTeam,
      "opposingTeam": opposingTeam
    };
  }

  static ScoutingEntity fromJson(Map<String, Object> json) {
    return ScoutingEntity(
      json["id"] as String,
      json["title"] as String,
      json["playerId"] as String,
      json["playerTeam"] as String,
      json["opposingTeam"] as String
    );
  }

  static ScoutingEntity fromSnapshot(DocumentSnapshot snap){
    return ScoutingEntity(
      snap.documentID,
      snap.data["title"],
      snap.data["playerId"],
      snap.data["playerTeam"],
      snap.data["opposingTeam"]
    );
  }

  Map<String, Object> toDocument() {
    return {
      "title": title,
      "playerId": playerId,
      "playerTeam": playerTeam,
      "opposingTeam": opposingTeam
    };
  }
}