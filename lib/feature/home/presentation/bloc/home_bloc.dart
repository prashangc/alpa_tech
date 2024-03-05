import 'package:alpa/feature/home/data/model/department/department_model.dart';
import 'package:alpa/feature/home/data/model/hospital/hospital_model.dart';
import 'package:alpa/feature/home/data/repository/home_repository.dart';
import 'package:alpa/feature/home/presentation/bloc/home_event.dart';
import 'package:alpa/feature/home/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(HomeInitial()) {
    _initializer();
    on<HomeSuccessEvent>(onSuccessEvent);
    on<HomeErrorEvent>(onErrorEvent);
  }

  Future<void> _initializer() async {
    ListOfDepartmentModel? departmentList =
        await homeRepository.getDepartment();
    ListOfHospitalModel? hospitalList = await homeRepository.getHospital();
    if (departmentList != null && hospitalList != null) {
      add(HomeSuccessEvent(
        hospitalList: hospitalList,
        departmentList: departmentList,
      ));
    } else {
      add(HomeErrorEvent(error: 'No data found'));
    }
  }

  void onSuccessEvent(HomeSuccessEvent event, Emitter<HomeState> emit) {
    emit(HomeSuccessState(
      hospitalList: event.hospitalList,
      departmentList: event.departmentList,
    ));
  }

  void onErrorEvent(HomeErrorEvent event, Emitter<HomeState> emit) {
    emit(HomeErrorState(error: event.error));
  }
}
