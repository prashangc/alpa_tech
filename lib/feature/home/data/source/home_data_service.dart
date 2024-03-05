import 'dart:convert';

import 'package:alpa/feature/home/data/source/ihome_data_service.dart';
import 'package:flutter/services.dart';

class HomeApiService extends HomeApiServiceInterface {
  @override
  Future<Map<String, dynamic>> getDepartment() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/json/departments.json');
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      return jsonData;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getHospital() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/json/hospital.json');
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      return jsonData;
    } catch (e) {
      rethrow;
    }
  }
}
