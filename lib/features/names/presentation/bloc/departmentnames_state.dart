part of 'departmentnames_bloc.dart';

@immutable
sealed class DepartmentnamesState {}

final class DepartmentnamesInitial extends DepartmentnamesState {}

final class DepartmentNamesLoading extends DepartmentnamesState {}

final class DepartmentNamesLoaded extends DepartmentnamesState {
  Future<List<DepartmentEntity>> deptnames;

  DepartmentNamesLoaded({required this.deptnames});
}
