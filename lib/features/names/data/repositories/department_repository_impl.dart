import 'package:demo3/features/names/data/datasources/department_data_source.dart';
import 'package:demo3/features/names/domain/entities/department_entity.dart';
import 'package:demo3/features/names/domain/repositories/department_repository.dart';

class DepartmentRepositoryImpl implements DepartmentRepository {
  //step -1
  //get  instance of  data source from the department datasource file
  final DepartmentDataSource departmentDataSource;

  DepartmentRepositoryImpl({required this.departmentDataSource});

  @override
  Future<List<DepartmentEntity>> getDepartmentName() async {
    //fetch the data from the datasource
    final departname = await departmentDataSource.getDepartmentNames();
    return departname
        .map((departname) =>
            DepartmentEntity(departmentName: departname.departmentName))
        .toList();
  }
}
