import 'package:demo3/features/names/domain/entities/name_entity.dart';

class ApiNameModel extends NameEntity {
  final String names;
  ApiNameModel({required this.names}) : super(name: names);

  
}
