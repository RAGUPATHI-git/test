import 'package:demo3/features/names/domain/entities/department_entity.dart';

abstract class DepartmentRepository {
  Future<List<DepartmentEntity>> getDepartmentName();
}
