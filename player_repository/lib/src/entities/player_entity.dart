import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class PlayerEntity extends Equatable{
  final String id;
  final String name;
  final String position;
  final int number;
  final int height; // Height in centimeters with format as given in example. Ex: 184 cm.
  final int weight; // Weight in kilos with format as given in example. Ex: 74 kg.

  const PlayerEntity(this.id, this.name, this.position, this.number, this.height, this.weight);

  @override
  List<Object> get props => [id, name, position, number, height, weight];

  @override
  String toString() {
    return "PlayerEntity {id: $id, name: $name, position: $position, number: $number, height: $height, weight: $weight}";
  }

  Map<String, Object> toJson() {
    return {
      "id": id,
      "name": name,
      "position": position,
      "number": number,
      "height": height,
      "weight": weight,
    };
  }

  static PlayerEntity fromJson(Map<String, Object> json){
    return PlayerEntity(
      json["id"] as String,
      json["name"] as String,
      json["position"] as String,
      json["number"] as int,
      json["height"] as int,
      json["weight"] as int,
    );
  }

  static PlayerEntity fromSnapshot(DocumentSnapshot snap) {
    return PlayerEntity(
      snap.documentID,
      snap.data["name"],
      snap.data["position"],
      snap.data["number"],
      snap.data["height"],
      snap.data["weight"],
    );
  }

  Map<String, Object> toDocument() {
    return {
      "name": name,
      "position": position,
      "number": number,
      "height": height,
      "weight": weight,
    };
  }
}