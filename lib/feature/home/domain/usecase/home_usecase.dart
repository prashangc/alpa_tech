import 'dart:convert';

import 'package:alpa/core/services/state/state_handler_bloc.dart';
import 'package:alpa/feature/home/data/model/home/home_model.dart';
import 'package:alpa/feature/home/domain/entities/category_model.dart';
import 'package:alpa/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeUseCase {
  List<CategoryModel> categoryList = [
    const CategoryModel(
        iconData: Icons.local_hospital_outlined, name: 'Clinic Visit'),
    const CategoryModel(
        iconData: Icons.home_repair_service, name: 'Home Visit'),
    const CategoryModel(
        iconData: Icons.video_settings_outlined, name: 'Video Consult'),
    const CategoryModel(iconData: Icons.note_alt_outlined, name: 'Pharmacy'),
    const CategoryModel(iconData: Icons.clean_hands_outlined, name: 'Diseases'),
    const CategoryModel(
        iconData: Icons.swap_vert_circle_outlined, name: 'Covid-19'),
  ];

  List<Widget> listOfWidget = [];
  StateHandlerBloc listState = StateHandlerBloc();

  addDataToList() async {
    String jsonString =
        await rootBundle.loadString('assets/json/${FlavorSettings.name}.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);

    for (var element in jsonData['homepage']) {
      listOfWidget.add(HomeModel().getWidget(element['name']));
    }
    listState.storeData(data: listOfWidget);
  }
}
