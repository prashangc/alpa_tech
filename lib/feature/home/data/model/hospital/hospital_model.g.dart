// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfHospitalModel _$ListOfHospitalModelFromJson(Map<String, dynamic> json) =>
    ListOfHospitalModel(
      hospitals: (json['hospitals'] as List<dynamic>)
          .map((e) => HospitalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListOfHospitalModelToJson(
        ListOfHospitalModel instance) =>
    <String, dynamic>{
      'hospitals': instance.hospitals,
    };

HospitalModel _$HospitalModelFromJson(Map<String, dynamic> json) =>
    HospitalModel(
      hospital: json['hospital'] as String,
      image: json['image'] as String,
      id: json['id'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$HospitalModelToJson(HospitalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hospital': instance.hospital,
      'image': instance.image,
      'total': instance.total,
    };
