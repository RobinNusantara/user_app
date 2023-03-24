import 'package:equatable/equatable.dart';
import 'package:user_app/models/address_model.dart';
import 'package:user_app/models/company_model.dart';

class UserModel extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final CompanyModel company;

  const UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: Address.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: CompanyModel.fromJson(json['company']),
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
