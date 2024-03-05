import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/utils/textstyle/textstyle.dart';
import 'package:flutter/material.dart';

Widget profileCard(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const CircleAvatar(
        radius: 20.0,
        backgroundImage: AssetImage(
          'assets/images/user.jpg',
        ),
      ),
      sizedBox12(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, Kaixa',
            style: kStyle14B.copyWith(
              color: MyColor.lightColorScheme.secondary,
            ),
          ),
          sizedBox2(),
          Text(
            'Welcome Back',
            style: kStyle12.copyWith(
              color: MyColor.lightColorScheme.secondary,
            ),
          ),
        ],
      )
    ],
  );
}
