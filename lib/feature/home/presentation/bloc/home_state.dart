import 'package:alpa/feature/home/data/model/department/department_model.dart';
import 'package:alpa/feature/home/data/model/hospital/hospital_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeSuccessState extends HomeState {
  final ListOfHospitalModel hospitalList;
  final ListOfDepartmentModel departmentList;
  HomeSuccessState({required this.hospitalList, required this.departmentList});
}

class HomeErrorState extends HomeState {
  final String error;
  HomeErrorState({required this.error});
}
