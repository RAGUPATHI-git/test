import 'package:demo3/features/names/data/datasources/name_data_source.dart';
import 'package:demo3/features/names/domain/entities/name_entity.dart';
import 'package:demo3/features/names/domain/repositories/name_repository.dart';

class NameRepositoryImpl implements NameRepository {
  final NameDataSource dataSource;

  NameRepositoryImpl({required this.dataSource});

  @override
  Future<List<NameEntity>> getName() async {
    final names = await dataSource.getNames(); // datasource -> getNames()
    return names.map((singlename) => NameEntity(name: singlename.name)).toList();
  }
}

// just convert list of models into list of entity

//fetch the datas from the data source file