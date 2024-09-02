import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/task1/components/buttons.dart';
import 'package:untitled6/task1/components/selected_buttons.dart';
import 'package:untitled6/task1/itmes/level_items.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final levelItems = LevelItems();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Text(
                'What\'s your Level',
                style: TextStyle(
                  color: const Color(0xFF525F7F),
                  fontSize: 25.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                'Choose your current level, We will \nsuggest the best lesson for you',
                style: TextStyle(
                  color: const Color(0xFF98A3C7),
                  fontSize: 18.0.sp,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: levelItems.items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 20,left: 20,bottom: 12.h),
                    child: selectedButton(
                      function: () {},
                      text: levelItems.items[index].text,
                      svgPath: levelItems.items[index].svgPath,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 60.h,
              ),
              defaultButton(function: () {}, text: 'Continue'),
              SizedBox(height: 10.h,),
              const Text(
                'By using it you confirm that you have read and\nagree to our terms of service and privacy policy',
                style: TextStyle(color: Color(0xFF98A3C7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
