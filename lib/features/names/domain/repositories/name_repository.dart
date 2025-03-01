import 'package:demo3/features/names/domain/entities/name_entity.dart';


abstract class NameRepository {
  Future<List<NameEntity>> getName();
}



