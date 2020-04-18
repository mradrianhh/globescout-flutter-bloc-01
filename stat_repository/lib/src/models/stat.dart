import 'package:meta/meta.dart';

import "../entities/entities.dart";

@immutable
class Stat {
  final String id;
  final String title;
  final int value;

  Stat({String id, String title ="", this.value}) : this.id = id, this.title = title ?? "";

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Stat &&
                                                              runtimeType == other.runtimeType &&
                                                              id == other.id &&
                                                              title == other.title &&
                                                              value == other.value;

  @override
  String toString() => "Stat {id: $id, title: $title, value: $value}";                                                      

  Stat copyWith({String id, String title, int number}) {
    return Stat(
      id: id ?? this.id,
      title: title ?? this.title,
      value: value ?? this.value,
    );
  }

  StatEntity toEntity() {
    return StatEntity(id, title, value);
  }

  static Stat fromEntity(StatEntity entity) {
    return Stat(
      id: entity.id,
      title: entity.title,
      value: entity.value,
    );
  }

}