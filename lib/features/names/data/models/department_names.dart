import 'package:demo3/features/names/domain/entities/department_entity.dart';

class DepartmentNamesModel extends DepartmentEntity {
  final String departmentName;
  DepartmentNamesModel({required this.departmentName})
      : super(departmentName: departmentName);
    
  
}
