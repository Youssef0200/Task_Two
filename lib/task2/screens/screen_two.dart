import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled6/task2/itmes/teacher_items.dart';

class Teachers extends StatelessWidget {
  final teacherItems = TeacherItems(); // Accessing teacher items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // App bar-like container at the top
          SafeArea(
            child: Stack(
              children: [
                Container(
                  width: 390.w,
                  height: 139.h,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF182243),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Teachers',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(right: 0, child: Image.asset('assets/design.png')),
              ],
            ),
          ),
          SizedBox(height: 29.h),

          // Using ListView to dynamically generate teacher cards
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemCount: teacherItems.items.length,
              itemBuilder: (context, index) {
                final teacher = teacherItems.items[index]; // Access each teacher item

                // Each teacher's UI card
                return Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Stack(
                    children: [
                      Container(
                        width: 335.w,
                        height: 177.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFFF6F6F6),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Image.asset(teacher.imagePath), // Using image from teacherItems
                      ),
                      Positioned(
                        top: 30,
                        right: 35,
                        child: Text(
                          teacher.name,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 65,
                        right: 35,
                        child: Text(
                          teacher.role,
                          style:  TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 25,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                // Handle phone action here
                              },
                              icon: SvgPicture.asset(teacher.phoneIconPath), // Phone icon
                            ),
                            Text(
                              teacher.phone,
                              style:  TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF2D2D2D),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 35,
                        child: IconButton(
                          onPressed: () {
                            // Handle chat action here
                          },
                          icon: SvgPicture.asset(teacher.chatIconPath), // Chat icon
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}