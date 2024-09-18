import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled6/task3/Screens/add_address.dart';
import 'package:untitled6/task3/Screens/children.dart';
import 'package:untitled6/task3/Screens/my_cart.dart';
import 'package:untitled6/task2/screens/screen_one.dart';
import 'package:untitled6/task2/screens/screen_two.dart';
import 'package:untitled6/task3/Screens/success.dart';
import 'package:untitled6/task3/Screens/setting.dart';
import 'package:untitled6/task4/assignments.dart';
import 'package:untitled6/task4/attendance.dart';
import 'package:untitled6/task4/exams.dart';
import 'package:untitled6/task4/result_fail.dart';
import 'package:untitled6/task4/result_pass.dart';
import 'package:untitled6/task4/time_table.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // Set the design size of your app (width, height)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: TimeTable(),
        );
      },
    );
  }
}
