import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled6/task1/components/buttons.dart';
import 'package:untitled6/task1/itmes/goals_items.dart';
import 'package:untitled6/task1/components/selected_buttons.dart';
import 'package:untitled6/task1/screens/screen_two.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final goalItems = GoalItems();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 30),
            child: Column(
              children: [
                Text(
                  'Choose your goals',
                  style: TextStyle(
                    color: const Color(0xFF525F7F),
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'What are your mind goals? We will \nhelp you achieve them!',
                  style: TextStyle(
                    color: const Color(0xFF98A3C7),
                    fontSize: 18.0.sp,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: goalItems.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 20,left: 20,bottom: 12.h),
                      child: selectedButton(
                        function: () {},
                        text: goalItems.items[index].text,
                        svgPath: goalItems.items[index].svgPath,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 60.h,
                ),
                defaultButton(function: () {Get.to(LevelScreen());}, text: 'Continue'),
                SizedBox(height: 10.h,),
                const Text(
                  'By using it you confirm that you have read and\nagree to our terms of service and privacy policy',
                  style: TextStyle(color: Color(0xFF98A3C7)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
