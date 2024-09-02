import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget  defaultButton({
  double? height,
  double? width,
  Color background = const Color(0xFF686BFF),
  bool isUpperCase = false,
  double? radius,
  double borderWidth = 0.5,

  Color borderColor = Colors.transparent,

  required void Function() function,
  required String text,
}) {
  height ??= 50.h;
  width ??= 328.w;
  radius ??= 10.r;
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
        border: Border.all(color: borderColor, width: borderWidth)),
    child: MaterialButton(
      onPressed: function,
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(
          fontSize: 18.sp,
          color: Colors.white,
        ),
      ),
    ),
  );
}