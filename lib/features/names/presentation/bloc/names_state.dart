part of 'names_bloc.dart';

@immutable
sealed class NamesState {}

final class NamesInitial extends NamesState {}

final class NamesLoading extends NamesState {}

final class NamesLoaded extends NamesState {
  final List<NameEntity> names;

  NamesLoaded({required this.names});
  
}

final class NumberState{}

final class Numberss extends NumberState{}

final class NumbersLoaded extends NumberState{

  final List<NumberEntitiy> numbers;

  NumbersLoaded({required this.numbers});
}
