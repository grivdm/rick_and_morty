import 'dart:convert';

import 'package:rick_and_morty/feature/data/models/location_model.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';

class CharacterModel extends CharacterEntity {
  const CharacterModel(
      {required super.id,
      required super.name,
      required super.status,
      required super.species,
      required super.type,
      required super.gender,
      required super.origin,
      required super.location,
      required super.image,
      required super.episode,
      required super.created});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
      'origin': (origin as LocationModel?)?.toMap(),
      'location': (location as LocationModel?)?.toMap(),
      'image': image.toString(),
      'episode': episode,
      'created': created.toIso8601String(),
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'] as int,
      name: map['name'] as String,
      status: map['status'] as String,
      species: map['species'] as String,
      type: map['type'] as String,
      gender: map['gender'] as String,
      origin: LocationModel.fromMap(map['origin']),
      location: LocationModel.fromMap(map['location']),
      image: Uri.parse(map['image']),
      episode:
          (map['episode'] as List<dynamic>).map((e) => e.toString()).toList(),
      created: DateTime.parse(map['created']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
