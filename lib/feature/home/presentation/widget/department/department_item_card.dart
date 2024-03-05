import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/container/container.dart';
import 'package:alpa/core/global/image/my_cached_network_image.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/utils/textstyle/textstyle.dart';
import 'package:alpa/feature/home/data/model/department/department_model.dart';
import 'package:flutter/material.dart';

Widget departmentItemCard(
    {required BuildContext context, required DepartmentModel department}) {
  return MyContainer(
    margin: const EdgeInsets.only(right: 12.0),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
    child: Column(
      children: [
        myCachedNetworkImageCircle(
          myWidth: 50.0,
          myHeight: 50.0,
          myImage: department.image!,
        ),
        sizedBox12(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              department.department!,
              style: kStyle12B,
            ),
            sizedBox2(),
            Text(
              '${department.total} Doctors',
              style: kStyle12.copyWith(
                fontSize: 10.0,
                color: MyColor.lightColorScheme.tertiary.withOpacity(0.4),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
