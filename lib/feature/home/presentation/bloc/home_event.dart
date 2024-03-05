import 'package:alpa/feature/home/data/model/department/department_model.dart';
import 'package:alpa/feature/home/data/model/hospital/hospital_model.dart';

abstract class HomeEvent {}

class HomeSuccessEvent extends HomeEvent {
  final ListOfHospitalModel hospitalList;
  final ListOfDepartmentModel departmentList;
  HomeSuccessEvent({required this.hospitalList, required this.departmentList});
}

class HomeErrorEvent extends HomeEvent {
  final String error;
  HomeErrorEvent({required this.error});
}
