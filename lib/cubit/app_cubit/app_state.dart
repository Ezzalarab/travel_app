part of 'app_cubit.dart';

sealed class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

final class AppInitial extends AppState {}

final class AppLoading extends AppState {}

final class AppSuccess extends AppState {
  final List<DataModel> places;
  const AppSuccess({required this.places});
}

final class AppFailure extends AppState {
  final String errorMessage;
  const AppFailure(this.errorMessage);
}
