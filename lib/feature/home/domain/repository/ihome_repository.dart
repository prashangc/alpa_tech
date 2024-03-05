import 'package:alpa/feature/home/data/model/department/department_model.dart';
import 'package:alpa/feature/home/data/model/hospital/hospital_model.dart';

abstract class HomeRepositoryInterface {
  Future<ListOfDepartmentModel?> getDepartment();
  Future<ListOfHospitalModel?> getHospital();
}
