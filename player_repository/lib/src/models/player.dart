import "package:meta/meta.dart";

import '../entities/entities.dart';

@immutable
class Player {
  final String id;
  final String name;
  final String position;
  final int number;

  Player({String id, String name = "", String position = "", this.number}) : this.id = id, this.name = name ?? "", this.position = position ?? "";

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ position.hashCode ^ number.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Player && 
                                                              runtimeType == other.runtimeType &&
                                                              id == other.id &&
                                                              name == other.name &&
                                                              position == other.position &&
                                                              number == other.number;

  @override
  String toString() {
    return "Player {id: $id, name: $name, position: $position, number: $number}";
  }

  Player copyWith({String id, String name, String position, String number}){
    return Player(
      id: id ?? this.id,
      name: name ?? this.name,
      position: position ?? this.position,
      number: number ?? this.number
    );
  }

  PlayerEntity toEntity() {
    return PlayerEntity(id, name, position, number);
  }

  static Player fromEntity(PlayerEntity entity) {
    return Player(
      id: entity.id,
      name: entity.name,
      position: entity.position,
      number: entity.number
    );
  }
}