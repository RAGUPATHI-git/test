import 'package:demo3/features/names/data/datasources/name_data_source.dart';
import 'package:demo3/features/names/domain/entities/name_entity.dart';
import 'package:demo3/features/names/domain/repositories/name_repository.dart';

class NameRepositoryImpl implements NameRepository {
  final NameDataSource dataSource;

  NameRepositoryImpl({required this.dataSource});

  @override
  Future<List<NameEntity>> getName() async {
    final names = await dataSource.getApiNames();
    return names.map((names) => NameEntity(name: names.name)).toList();
  }
}
