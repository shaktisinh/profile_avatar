import 'package:flutter/material.dart';

Widget Avatar(
    {String? image,
      String? name,
      double? borderRadius,
      double? borderWidth,
      Color? borderColor,
      double? avatarSize,
      TextStyle? avatarTextStyle,
      Widget? defaultAvatar}) {

  double radius = borderRadius ?? 0;
  double size = avatarSize ?? 50;
  double widthBorder = borderWidth ?? 2;
  Color colorBorder = borderColor ?? Colors.black;
  TextStyle textStyle = avatarTextStyle ?? TextStyle(
    fontSize: size,
    color: borderColor,
    fontWeight: FontWeight.bold,
  );
  Widget avatar = defaultAvatar?? Icon(Icons.person_outline, size: size, color: borderColor,);

  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: SizedBox.fromSize(
      size: Size.fromRadius(size),
      child: _item(image, name, radius, widthBorder, colorBorder, textStyle,avatar),
    ),
  );
}

Widget _item(String? image, String? name, double borderRadius,
    double borderWidth, Color borderColor, TextStyle textStyle, Widget defaultAvatar) {
  if (image != null &&
      image.isNotEmpty == true &&
      image.contains("file:") == false) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: borderWidth, color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(image,))));
  } else if (name != null && name.isNotEmpty) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: borderWidth, color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Text(
          _getInitials(name.toUpperCase()),
          style: textStyle,
        ));
  } else {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: borderWidth, color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child:defaultAvatar);
  }
}

String _getInitials(String name) =>
    name.trim().split(RegExp(' +')).map((e) => e[0]).take(2).join();