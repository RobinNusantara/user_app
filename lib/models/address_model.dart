import 'package:equatable/equatable.dart';
import 'package:user_app/models/geo_model.dart';

class Address extends Equatable {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  const Address({required this.street, required this.suite, required this.city, required this.zipcode, required this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: Geo.fromJson(json['geo']),
    );
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
