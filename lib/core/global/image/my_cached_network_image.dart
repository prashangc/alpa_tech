import 'package:alpa/config/theme/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget myCachedNetworkImage({
  required double myWidth,
  required double myHeight,
  required String myImage,
  required BorderRadiusGeometry borderRadius,
}) {
  return CachedNetworkImage(
    width: myWidth,
    height: myHeight,
    imageUrl: myImage,
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          alignment: FractionalOffset.topCenter,
        ),
      ),
    ),
    placeholder: (context, url) => Center(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircularProgressIndicator(
        color: MyColor.lightColorScheme.primary,
        strokeWidth: 1.5,
      ),
    )),
    errorWidget: (context, url, error) =>
        const Icon(Icons.no_photography_outlined),
  );
}

Widget myCachedNetworkImageCircle({
  required double myWidth,
  required double myHeight,
  required String myImage,
}) {
  return CachedNetworkImage(
    width: myWidth,
    height: myHeight,
    imageUrl: myImage,
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          alignment: FractionalOffset.topCenter,
        ),
      ),
    ),
    placeholder: (context, url) => Center(
        child: CircularProgressIndicator(
      color: MyColor.lightColorScheme.primary,
      strokeWidth: 1.5,
    )),
    errorWidget: (context, url, error) =>
        const Icon(Icons.no_photography_outlined),
  );
}
