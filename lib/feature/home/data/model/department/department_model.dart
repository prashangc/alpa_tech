import 'package:json_annotation/json_annotation.dart';

part 'department_model.g.dart';

@JsonSerializable()
class ListOfDepartmentModel {
  final List<DepartmentModel> departments;
  const ListOfDepartmentModel({required this.departments});

  factory ListOfDepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$ListOfDepartmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListOfDepartmentModelToJson(this);
}

@JsonSerializable()
class DepartmentModel {
  final int? id;
  final String? department;
  final int? total;
  final String? image;

  const DepartmentModel({this.department, this.image, this.id, this.total});

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$DepartmentModelToJson(this);
}
