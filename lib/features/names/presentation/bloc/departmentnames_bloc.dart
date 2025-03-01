import 'package:bloc/bloc.dart';
import 'package:demo3/features/names/domain/entities/department_entity.dart';

import 'package:demo3/features/names/domain/usecases/get_department_usecase.dart';
import 'package:meta/meta.dart';

part 'departmentnames_event.dart';
part 'departmentnames_state.dart';

class DepartmentnamesBloc
    extends Bloc<DepartmentnamesEvent, DepartmentnamesState> {
  DepartmentnamesBloc() : super(DepartmentnamesInitial()) {
    on<DepartmentnamesEvent>((event, emit) async {
      await (DepartmentNamesLoading);
      final deptName = GetDepartmentUsecase().getDepartmentNames();
      await (DepartmentNamesLoaded(deptnames: deptName));
    });
  }
}
