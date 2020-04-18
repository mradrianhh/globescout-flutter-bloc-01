import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class StatEntity extends Equatable{
  final String id;
  final String title;
  final int value;

  StatEntity(this.id, this.title, this.value);

  @override
  List<Object> get props => [id, title, value];

  @override
  String toString() => "StatEntity {id: $id, title: $title, value: $value}";

  Map<String, Object> toJson() {
    return {
      "id": id,
      "title": title,
      "value": value,
    };
  }

  static StatEntity fromJson(Map<String, Object> json) {
    return StatEntity(
      json["id"] as String,
      json["title"] as String,
      json["value"] as int,
    );
  }

  static StatEntity fromSnapshot(DocumentSnapshot snap) {
    return StatEntity(
      snap.documentID,
      snap.data["title"],
      snap.data["value"],
    );
  }

  Map<String, Object> toDocument() {
    return {
      "title": title,
      "value": value,
    };
  }

}