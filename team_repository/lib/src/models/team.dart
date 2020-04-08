import 'package:meta/meta.dart';
import "../entities/entities.dart";

@immutable
class Team {
  final String id;
  final String name;

  Team({String id, String name = ""}) : this.id = id, this.name = name ?? "";

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || 
                                    other is Team &&
                                    runtimeType == other.runtimeType &&
                                    id == other.id &&
                                    name == other.name;

  @override
  String toString() {
    return "Team {id: $id, name: $name}";
  }

  Team copyWith({String id, String name}) {
    return Team(
      id: id ?? this.id,
      name: name ?? this.name
    );
  }

  TeamEntity toEntity() {
    return TeamEntity(id, name);
  }

  static Team fromEntity(TeamEntity entity) {
    return Team(
      id: entity.id,
      name: entity.name,
    );
  }
}