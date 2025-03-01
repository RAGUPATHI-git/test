import 'package:demo3/features/names/data/datasources/department_data_source.dart';
import 'package:demo3/features/names/data/repositories/department_repository_impl.dart';
import 'package:demo3/features/names/domain/entities/department_entity.dart';
import 'package:demo3/features/names/domain/repositories/department_repository.dart';

class GetDepartmentUsecase {
  final DepartmentRepository? repository;
  GetDepartmentUsecase({ this.repository});

  final departmentRepo =
      DepartmentRepositoryImpl(departmentDataSource: DepartmentDataSource());

  Future<List<DepartmentEntity>> getDepartmentNames() {
    return departmentRepo.getDepartmentName();
  }
}
