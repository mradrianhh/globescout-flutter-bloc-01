import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class PlayerEntity extends Equatable{
  final String id;
  final String name;
  final String position;
  final int number;

  const PlayerEntity(this.id, this.name, this.position, this.number);

  @override
  List<Object> get props => [id, name, position, number];

  @override
  String toString() {
    return "PlayerEntity {id: $id, name: $name, position: $position, number: $number}";
  }

  Map<String, Object> toJson() {
    return {
      "id": id,
      "name": name,
      "position": position,
      "number": number
    };
  }

  static PlayerEntity fromJson(Map<String, Object> json){
    return PlayerEntity(
      json["id"] as String,
      json["name"] as String,
      json["position"] as String,
      json["number"] as int
    );
  }

  static PlayerEntity fromSnapshot(DocumentSnapshot snap) {
    return PlayerEntity(
      snap.documentID,
      snap.data["name"],
      snap.data["position"],
      snap.data["number"]
    );
  }

  Map<String, Object> toDocument() {
    return {
      "name": name,
      "position": position,
      "number": number
    };
  }
}