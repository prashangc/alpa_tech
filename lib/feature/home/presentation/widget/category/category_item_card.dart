import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/utils/textstyle/textstyle.dart';
import 'package:alpa/feature/home/domain/entities/category_model.dart';
import 'package:flutter/material.dart';

Widget categoryItem(BuildContext context, CategoryModel categoryModel) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        categoryModel.iconData,
        color: MyColor.lightColorScheme.primary,
      ),
      sizedBox12(),
      Text(
        categoryModel.name,
        style: kStyle12B,
      ),
    ],
  );
}
