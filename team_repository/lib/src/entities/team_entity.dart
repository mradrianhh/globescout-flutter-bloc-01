import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class TeamEntity extends Equatable{
  final String id;
  final String name;

  const TeamEntity(this.id, this.name);

  @override
  List<Object> get props => [id, name];

  @override
  String toString() {
    return "TeamEntity {id: $id, name: $name}";
  }

  Map<String, Object> toJson() {
    return {
      "id": id,
      "name": name
    };
  }

  static TeamEntity fromJson(Map<String, Object> json) {
    return TeamEntity(
      json["id"] as String,
      json["name"] as String,
    );
  }

  static TeamEntity fromSnapshot(DocumentSnapshot snap) {
    return TeamEntity(
      snap.documentID,
      snap.data["name"],
    );
  }

  Map<String, Object> toDocument() {
    return {
      "name": name
    };
  }
}