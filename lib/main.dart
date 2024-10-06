import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart'; // Import flutter_windowmanager

import 'package:untitled6/task3/Screens/add_address.dart';
import 'package:untitled6/task3/Screens/adresses.dart';
import 'package:untitled6/task3/Screens/children.dart';
import 'package:untitled6/task3/Screens/my_cart.dart';
import 'package:untitled6/task2/screens/screen_one.dart';
import 'package:untitled6/task2/screens/screen_two.dart';
import 'package:untitled6/task3/Screens/success.dart';
import 'package:untitled6/task3/Screens/setting.dart';
import 'package:untitled6/task3/profile.dart';
import 'package:untitled6/task4/assignments.dart';
import 'package:untitled6/task4/attendance.dart';
import 'package:untitled6/task4/exams.dart';
import 'package:untitled6/task4/result_fail.dart';
import 'package:untitled6/task4/result_pass.dart';
import 'package:untitled6/task4/time_table.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Call the function to prevent screenshots and screen recording
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: StudentMenu(),
        );
      },
    );
  }
}
