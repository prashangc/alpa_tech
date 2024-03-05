import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/utils/sizer/size.dart';
import 'package:alpa/feature/dashboard/domain/usecase/dashboard_usecase.dart';
import 'package:alpa/feature/dashboard/presentation/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final DashboardUsecase dashboardUsecase;
  const CustomBottomNavBar({super.key, required this.dashboardUsecase});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
        initialData: 0,
        stream: dashboardUsecase.dashboardBloc.stateStream,
        builder: (ctx, snapshot) {
          return Container(
            width: maxWidth(context),
            height: 65.0,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: MyColor.lightColorScheme.tertiary
                            .withOpacity(0.05)))),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: dashboardUsecase.bottomNavList.length,
              itemBuilder: (ctx, i) {
                return GestureDetector(
                  onTap: () {
                    dashboardUsecase.onBottomNavTap(index: i);
                  },
                  child: bottomNavItem(
                    iconData: dashboardUsecase.bottomNavList[i],
                    context: context,
                    isActive: snapshot.data == i ? true : false,
                  ),
                );
              },
            ),
          );
        });
  }
}
