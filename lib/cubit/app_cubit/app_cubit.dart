import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/models/data_model.dart';

import '../../services/data_services.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required this.service}) : super(AppInitial());
  final DataServices service;
  late final List<DataModel> places;

  void getData() async {
    try {
      emit(AppLoading());
      places = await service.getInfo();
      emit(AppSuccess(places: places));
    } catch (e) {
      emit(AppFailure(e.toString()));
    }
  }

  detailPage(DataModel place) {
    emit(DetailsSuccess(place: place));
  }

  goHome() {
    emit(AppSuccess(places: places));
  }
}
