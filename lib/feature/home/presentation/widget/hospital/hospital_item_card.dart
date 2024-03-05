import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/global/container/container.dart';
import 'package:alpa/core/global/image/my_cached_network_image.dart';
import 'package:alpa/core/global/spacer/spacer.dart';
import 'package:alpa/core/utils/sizer/size.dart';
import 'package:alpa/core/utils/textstyle/textstyle.dart';
import 'package:alpa/feature/home/data/model/hospital/hospital_model.dart';
import 'package:flutter/material.dart';

Widget hospitalItemCard(
    {required BuildContext context, required HospitalModel hospitalModel}) {
  return MyContainer(
    margin:
        const EdgeInsets.only(right: 14.0, bottom: 3.0, top: 3.0, left: 3.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: myCachedNetworkImage(
            myWidth: maxWidth(context) / 1.7,
            myHeight: maxHeight(context) / 6,
            myImage: hospitalModel.image,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBox2(),
                Text(
                  hospitalModel.hospital,
                  style: kStyle12B,
                ),
                sizedBox2(),
                Text(
                  '${hospitalModel.total} Doctors',
                  style: kStyle12.copyWith(
                    fontSize: 10.0,
                    color: MyColor.lightColorScheme.tertiary.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
