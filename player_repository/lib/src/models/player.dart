import "package:meta/meta.dart";

import '../entities/entities.dart';

@immutable
class Player {
  final String id;
  final String name;
  final String position;
  final int number;
  final int height;
  final int weight;

  Player({String id, String name = "", String position = "", this.number, this.height, this.weight}) : this.id = id, this.name = name ?? "", this.position = position ?? "";

  @override 
  int get hashCode => id.hashCode ^ name.hashCode ^ position.hashCode ^ number.hashCode ^ height.hashCode ^ weight.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Player && 
                                                              runtimeType == other.runtimeType &&
                                                              id == other.id &&
                                                              name == other.name &&
                                                              position == other.position &&
                                                              number == other.number &&
                                                              height == other.height &&
                                                              weight == other.weight;

  @override
  String toString() {
    return "Player {id: $id, name: $name, position: $position, number: $number, height: $height, weight: $weight}";
  }

  Player copyWith({String id, String name, String position, int number, int height, int weight}){
    return Player(
      id: id ?? this.id,
      name: name ?? this.name,
      position: position ?? this.position,
      number: number ?? this.number,
      height: height ?? this.height,
      weight: weight ?? this.weight,
    );
  }

  PlayerEntity toEntity() {
    return PlayerEntity(id, name, position, number, height, weight);
  }

  static Player fromEntity(PlayerEntity entity) {
    return Player(
      id: entity.id,
      name: entity.name,
      position: entity.position,
      number: entity.number,
      height: entity.height,
      weight: entity.weight,
    );
  }
}