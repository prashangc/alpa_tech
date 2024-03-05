import 'package:json_annotation/json_annotation.dart';

part 'hospital_model.g.dart';

@JsonSerializable()
class ListOfHospitalModel {
  final List<HospitalModel> hospitals;
  const ListOfHospitalModel({required this.hospitals});

  factory ListOfHospitalModel.fromJson(Map<String, dynamic> json) =>
      _$ListOfHospitalModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListOfHospitalModelToJson(this);
}

@JsonSerializable()
class HospitalModel {
  final int id;
  final String hospital;
  final String image;
  final int total;

  const HospitalModel({
    required this.hospital,
    required this.image,
    required this.id,
    required this.total,
  });

  factory HospitalModel.fromJson(Map<String, dynamic> json) =>
      _$HospitalModelFromJson(json);
  Map<String, dynamic> toJson() => _$HospitalModelToJson(this);
}
