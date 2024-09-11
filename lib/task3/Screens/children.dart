import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled6/task3/items/children_items.dart';
class ChilderenScreen extends StatelessWidget {
  const ChilderenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SafeArea(
            child: Stack(
              children: [
                Container(
                  width: 390.w,
                  height: 139.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF182243),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.r),
                      bottomRight: Radius.circular(25.r),
                    ),
                  ),
                  child: Text(
                    'Children ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(right: 0, child: Image.asset('assets/design.png')),
              ],
            ),
          ),
          SizedBox(height: 27.h,),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemCount: ChildrenItems().items.length,
              itemBuilder: (context, index) {
                final children = ChildrenItems().items[index]; // Access each teacher item

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
                        child: Image.asset(children.imagePath), // Using image from teacherItems
                      ),
                      Positioned(
                        top: 30,
                        right: 30,
                        child: Text(
                          children.name,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 15,
                        right: 25,
                        child:
                        Text(
                          children.id,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2D2D2D),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 20,
                        child: Text(
                          children.level,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2D2D2D),
                          ),
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
