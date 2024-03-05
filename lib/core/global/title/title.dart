import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/utils/textstyle/textstyle.dart';
import 'package:flutter/material.dart';

Widget myTitle({required String title, required bool seeMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: kStyle14B.copyWith(fontSize: 16.0),
      ),
      Row(
        children: [
          Text(
            'View all',
            style: kStyle12.copyWith(color: MyColor.lightColorScheme.primary),
          ),
          sizedBox2(),
          Icon(Icons.keyboard_arrow_right_outlined,
              size: 16.0, color: MyColor.lightColorScheme.primary),
        ],
      ),
    ],
  );
}
