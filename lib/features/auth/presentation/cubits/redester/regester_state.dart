part of 'regester_cubit.dart';

sealed class RegesterState extends Equatable {
  const RegesterState();

  @override
  List<Object> get props => [];
}

final class RegesterInitial extends RegesterState {}

final class RegesterLoading extends RegesterState {}

final class RegesterSuccess extends RegesterState {}

final class RegesterError extends RegesterState {
  final String message;

  const RegesterError(this.message);
}
