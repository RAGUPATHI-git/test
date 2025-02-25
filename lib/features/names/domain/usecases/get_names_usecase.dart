import 'package:demo3/features/names/data/datasources/name_data_source.dart';
import 'package:demo3/features/names/data/repositories/name_repository_impl.dart';
import 'package:demo3/features/names/domain/entities/name_entity.dart';
import 'package:demo3/features/names/domain/repositories/name_repository.dart';

class GetNamesUsecase {
   NameRepository? repository;
  final namesRepository = NameRepositoryImpl(dataSource: NameDataSource());

  GetNamesUsecase({ this.repository});

  Future<List<NameEntity>> call() {
    return  namesRepository.getName();
  }
}

class GetIntUsecase{
  NumberRepository? repo;
  final numberRepositary = NumberRepositoryImpl(dataSourcee :NumberDataSource());

  GetIntUsecase({this.repo});

  Future<List<NumberEntitiy>> call(){
    return numberRepositary.getInt();
  }
  
  
  
  }