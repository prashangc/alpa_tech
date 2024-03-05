import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/feature/dashboard/domain/usecase/dashboard_usecase.dart';
import 'package:alpa/feature/dashboard/presentation/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final DashboardUsecase dashboardUsecase;
  const Dashboard({super.key, required this.dashboardUsecase});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: MyColor.lightColorScheme.primary,
      ),
      backgroundColor: MyColor.lightColorScheme.secondary,
      body: StreamBuilder<dynamic>(
          initialData: 0,
          stream: dashboardUsecase.dashboardBloc.stateStream,
          builder: (ctx, snapshot) {
            return dashboardUsecase.screens[snapshot.data];
          }),
      bottomNavigationBar:
          CustomBottomNavBar(dashboardUsecase: dashboardUsecase),
    );
  }
}
