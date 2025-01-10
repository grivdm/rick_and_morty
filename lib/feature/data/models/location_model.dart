import 'dart:convert';

import 'package:rick_and_morty/feature/domain/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  const LocationModel({required super.name, required super.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url.toString(),
    };
  }

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      name: map['name'] as String,
      url: Uri.parse(map['url'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationModel.fromJson(String source) =>
      LocationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
