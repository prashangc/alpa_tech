import 'package:alpa/feature/home/presentation/widget/department/department.dart';
import 'package:alpa/feature/home/presentation/widget/hospital/hospital.dart';
import 'package:flutter/material.dart';

class HomeModel {
  List<Homepage>? homepage;
  List<Widget>? listOfWidget;

  HomeModel({this.homepage});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['homepage'] != null) {
      homepage = <Homepage>[];
      json['homepage'].forEach((v) {
        homepage!.add(Homepage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homepage != null) {
      data['homepage'] = homepage!.map((v) => v.toJson()).toList();
    }

    return data;
  }

  Widget getWidget(String value) {
    Map<String, Widget> widgetMappings = {
      'departments': const Department(),
      'hospital': const Hospital(),
    };
    return widgetMappings[value]!;
    // return widgetMappings.containsKey(value);
  }
}

class Homepage {
  String? name;

  Homepage({this.name});

  Homepage.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }

//   List<Widget> getWidget(String name){
// return
//   }
}
// import 'dart:convert';

// import 'package:alpa/feature/home/presentation/widget/department/department.dart';
// import 'package:alpa/feature/home/presentation/widget/hospital/hospital.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class HomeModel {
//   getDataFromAPI() async {
//     String jsonString =
//         await rootBundle.loadString('assets/json/homepage.json');
//     Map<String, dynamic> jsonData = jsonDecode(jsonString);
//     List<Widget> list = [];
//     Map<String, Widget> mappingWidget = {
//       jsonData['homepage'][0]['name']: const Department(),
//       jsonData['homepage'][0]['name']: const Hospital(),
//     };
// list.add(Department,const Hospital())
//     return [];
//   }
// }
