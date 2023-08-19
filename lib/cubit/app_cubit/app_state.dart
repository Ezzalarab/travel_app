part of 'app_cubit.dart';

sealed class AppState extends Equatable {
  const AppState();
}

final class AppInitial extends AppState {
  @override
  List<Object?> get props => [];
}

final class AppLoading extends AppState {
  @override
  List<Object?> get props => [];
}

final class AppSuccess extends AppState {
  final List<DataModel> places;
  const AppSuccess({required this.places});

  @override
  List<Object?> get props => [places];
}

final class AppFailure extends AppState {
  final String errorMessage;
  const AppFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

final class DetailsSuccess extends AppState {
  final DataModel place;
  const DetailsSuccess({required this.place});

  @override
  List<Object?> get props => [place];
}
