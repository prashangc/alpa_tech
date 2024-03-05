import 'package:alpa/core/injector/dependency_injection.dart';
import 'package:alpa/core/services/state/state_handler_bloc.dart';
import 'package:alpa/feature/home/domain/usecase/home_usecase.dart';
import 'package:alpa/feature/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';

class DashboardUsecase {
  List<Widget> screens = [
    HomePage(homeUseCase: getIt<HomeUseCase>()),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  List<IconData> bottomNavList = [
    Icons.home_outlined,
    Icons.chat_outlined,
    Icons.calendar_month_outlined,
    Icons.notifications_outlined,
    Icons.group_outlined,
  ];

  StateHandlerBloc dashboardBloc = StateHandlerBloc();

  void onBottomNavTap({required int index}) {
    dashboardBloc.storeData(data: index);
  }
}
