import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/utils/sizer/size.dart';
import 'package:flutter/material.dart';

Widget bottomNavItem(
    {required IconData iconData,
    required bool isActive,
    required BuildContext context}) {
  return Container(
    width: maxWidth(context) / 5,
    padding: const EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive
          ? MyColor.lightColorScheme.primary.withOpacity(0.3)
          : Colors.transparent,
    ),
    child: Icon(
      iconData,
      color: isActive
          ? MyColor.lightColorScheme.primary
          : MyColor.lightColorScheme.primary.withOpacity(0.3),
      size: 22.0,
    ),
  );
}
