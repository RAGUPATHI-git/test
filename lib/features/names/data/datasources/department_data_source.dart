import 'package:demo3/features/names/data/models/department_names.dart';


class DepartmentDataSource {
  final List<DepartmentNamesModel> departmentModels = [
    DepartmentNamesModel(departmentName: "cse"),
    DepartmentNamesModel(departmentName: "ece"),
    DepartmentNamesModel(departmentName: "mech"),
    DepartmentNamesModel(departmentName: "aids"),
  ];

  Future<List<DepartmentNamesModel>> getDepartmentNames() async {
    await Future.delayed(Duration(seconds: 1));
    return departmentModels;
  }
}
