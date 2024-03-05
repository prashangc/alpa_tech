import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/utils/textstyle/textstyle.dart';
import 'package:flutter/material.dart';

Widget appBarTrailingCard(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      myIconStack(icon: Icons.search, hasNotification: false),
      sizedBox12(),
      myIconStack(icon: Icons.shopping_bag_outlined, hasNotification: true),
    ],
  );
}

Widget myIconStack({
  required IconData icon,
  required bool hasNotification,
}) {
  return Stack(
    children: [
      Icon(
        icon,
        color: MyColor.lightColorScheme.secondary,
        size: 25.0,
      ),
      hasNotification == false
          ? Positioned(top: 5.0, right: 2.0, child: Container())
          : Positioned(
              top: 2.0,
              right: 0.0,
              child: notificationCounter(1),
            ),
    ],
  );
}

Widget notificationCounter(value) {
  return CircleAvatar(
      radius: 6.0,
      backgroundColor: MyColor.lightColorScheme.error,
      child: Text(
        value.toString(),
        style: kStyle12.copyWith(
          fontSize: 8.0,
          color: MyColor.lightColorScheme.secondary,
        ),
      ));
}
