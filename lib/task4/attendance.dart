import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

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
                    'Attendance',
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
          SizedBox(
            height: 25.h,
          ),
          Stack(
            children: [
              Container(
                width: 335.w,
                height: 289.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Color(0xFF2AF62A),
                ),
              ),
              Positioned(
                left: 95,
                top: 20,
                child: Text(
                  'Total Present',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26.sp),
                ),
              ),
              Positioned(
                bottom: -15,
                right: -30,
                child: Image.asset('assets/boy.png'),
              ),
              Positioned(
                  left: 115,
                  top: 90,
                  child: Container(
                    width: 120, // Adjust the size accordingly
                    height: 115, // Adjust the size accordingly
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent, // White outer circle
                      border: Border.all(
                        color: Colors.white, // Outer black border color
                        width: 3, // Outer black border width
                      ),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 48,
                        // Adjust radius for inner circle
                        backgroundColor: Colors.white,
                        // Inner circle background color
                        child: Text(
                          '6', // Number inside the circle
                          style: TextStyle(
                            fontSize: 54.sp, // Text size
                            color: Color(0xFF2AF62A), // Text color (green)
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Stack(
            children: [

              Container(
                width: 335.w,
                height: 289.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Color(0xFFEE0909),
                ),
              ),
              Positioned(
                left: 95,
                top: 20,
                child: Text(
                  'Total Absent',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26.sp),
                ),
              ),
              // Positioned(
              //   bottom: -15,
              //   left: -9,
              //   child: Image.asset('assets/girl.png'),
              // ),
              Positioned(
                  left: 115,
                  top: 90,
                  child: Container(
                    width: 120, // Adjust the size accordingly
                    height: 115, // Adjust the size accordingly
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent, // White outer circle
                      border: Border.all(
                        color: Colors.white, // Outer black border color
                        width: 3, // Outer black border width
                      ),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 48,
                        // Adjust radius for inner circle
                        backgroundColor: Colors.white,
                        // Inner circle background color
                        child: Text(
                          '1', // Number inside the circle
                          style: TextStyle(
                            fontSize: 54.sp, // Text size
                            color: Color(0xFFEE0909), // Text color (red)
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )),

              Positioned(
                bottom: -15,
                left: -6,
                child: Image.asset('assets/girl.png'),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
