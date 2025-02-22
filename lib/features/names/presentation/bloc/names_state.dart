part of 'names_bloc.dart';

@immutable
sealed class NamesState {}

final class NamesInitial extends NamesState {}

final class NamesLoading extends NamesState {}

final class NamesLoaded extends NamesState {
  final List<NameEntity> names;

  NamesLoaded({required this.names});
  
}
