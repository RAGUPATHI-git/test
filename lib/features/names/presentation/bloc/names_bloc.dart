import 'package:bloc/bloc.dart';
import 'package:demo3/features/names/domain/entities/name_entity.dart';
import 'package:demo3/features/names/domain/usecases/get_names_usecase.dart';
import 'package:meta/meta.dart';

part 'names_event.dart';
part 'names_state.dart';

class NamesBloc extends Bloc<NamesEvent, NamesState> {
  final GetNamesUsecase getNamesUsecase;
  NamesBloc(this.getNamesUsecase) : super(NamesInitial()) {
    on<NamesEvent>((event, emit) async {
      await (NamesLoading());
      final names = await GetNamesUsecase().call();
      emit(NamesLoaded(names: names));
    });
  }
}

class NumbersBloc extends Bloc<NumbersEvent,NumberState>{

  final GetIntUsecase getIntUsecase;

  NumbersBloc(this.getIntUsecase): super(Numberss()){
    on<NumbersEvent>((event,emit) async {

      final numbers= await GetIntUsecase().call();
      emit(NumbersLoaded(numbers: numbers));
    });
  }
}
