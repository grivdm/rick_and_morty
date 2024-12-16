import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final String name;
  final Uri url;
  const LocationEntity({
    required this.name,
    required this.url,
  });

  @override
  List<Object> get props => [name, url];
}
