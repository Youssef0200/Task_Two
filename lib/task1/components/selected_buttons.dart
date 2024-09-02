import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Color defaultIconColor = Color(0xFF525F7F);

Widget selectedButton({
  double? height,
  double? width,
    Color background = const Color(0xFFEEF0F7),
  double? radius,
  double borderWidth = 0.5,
  Color borderColor = Colors.transparent,
  required void Function() function,
  required String text,
  String? svgPath,
  Color color = defaultIconColor,

}) {
  height ??= 80.h;
  width ??= 328.w;
  radius ??= 10.r;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: background,
      border: Border.all(color: borderColor, width: borderWidth),
    ),
    child: MaterialButton(
      onPressed: function,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (svgPath != null)
            SvgPicture.asset(
              svgPath,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
          if (svgPath != null) SizedBox(width: 24.w), //
          Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              color: const Color(0xFF525F7F),
            ),
          ),
        ],
      ),
    ),
  );
}
