import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/feature/home/presentation/widget/appbar/profile_card.dart';
import 'package:alpa/feature/home/presentation/widget/appbar/trailing_card.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      color:
          //  FlavorSettings.name == 'live'
          //     ? MyColor.lightColorScheme.error
          //     :
          MyColor.lightColorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profileCard(context),
          appBarTrailingCard(context),
        ],
      ),
    );
  }
}
