import 'package:alpa/core/exception/exception.dart';
import 'package:alpa/feature/home/data/model/department/department_model.dart';
import 'package:alpa/feature/home/data/model/hospital/hospital_model.dart';
import 'package:alpa/feature/home/data/source/home_data_service.dart';
import 'package:alpa/feature/home/domain/repository/ihome_repository.dart';

class HomeRepository extends HomeRepositoryInterface {
  final HomeApiService homeApiService;
  HomeRepository({required this.homeApiService});

  @override
  Future<ListOfDepartmentModel?> getDepartment() async {
    try {
      Map<String, dynamic> json = await homeApiService.getDepartment();
      return ListOfDepartmentModel.fromJson(json);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<ListOfHospitalModel?> getHospital() async {
    try {
      Map<String, dynamic> json = await homeApiService.getHospital();
      return ListOfHospitalModel.fromJson(json);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
