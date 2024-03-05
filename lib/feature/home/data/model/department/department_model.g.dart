// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfDepartmentModel _$ListOfDepartmentModelFromJson(
        Map<String, dynamic> json) =>
    ListOfDepartmentModel(
      departments: (json['departments'] as List<dynamic>)
          .map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListOfDepartmentModelToJson(
        ListOfDepartmentModel instance) =>
    <String, dynamic>{
      'departments': instance.departments,
    };

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) =>
    DepartmentModel(
      department: json['department'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$DepartmentModelToJson(DepartmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'department': instance.department,
      'total': instance.total,
      'image': instance.image,
    };
