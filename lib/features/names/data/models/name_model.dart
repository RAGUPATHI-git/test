import 'package:demo3/features/names/domain/entities/name_entity.dart';

//step 2

//A Model is a data representation that interacts with external sources like
//databases, APIs, or local storage.It acts as a bridge between
//the domain layer (entities) and the data layer (Firebase, REST APIs, local DB, etc.).

class NameModel extends NameEntity {
  final String names;
  NameModel({required this.names}) : super(name: names);
  // NameModel({required super.name});

  // modify the input which is comes from the json file
  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(names: json['name']);
  }
}
