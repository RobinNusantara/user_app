import 'package:equatable/equatable.dart';

class CompanyModel extends Equatable {
  final String name;
  final String catchPhrase;
  final String bs;

  const CompanyModel({required this.name,required this.catchPhrase,required this.bs});

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}