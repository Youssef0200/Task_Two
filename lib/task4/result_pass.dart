import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the ListView
    final List<Map<String, String>> examResults = [
      {
        'examName': 'Mid term Math',
        'date': '01-12-2023',
        'status': 'Pass',
        'grade': 'A',
        'percentage': '90%',
      },
      {
        'examName': 'Final term Science',
        'date': '15-12-2023',
        'status': 'Pass',
        'grade': 'B',
        'percentage': '85%',
      },
      {
        'examName': 'Mid term English',
        'date': '20-12-2023',
        'status': 'Pass',
        'grade': 'A-',
        'percentage': '88%',
      },
    ];

    return Scaffold(
      body: Column(children: [
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
                  'Result',
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
          height: 15.h,
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: examResults.length, // Number of items in the list
            itemBuilder: (context, index) {
              final exam =
                  examResults[index]; // Get the exam data for each index

              return Container(
                margin: EdgeInsets.only(bottom: 20.h),
                // Add margin between items
                width: 355.w,
                height: 153.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        Text(
                          'Exam Name',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 100.w),
                        Text(
                          exam['date']!,
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        Text(
                          exam['examName']!,
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 100.w),
                        Text(
                          exam['status']!,
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        Text(
                          'Grade: ${exam['grade']}',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 80.w),
                        Text(
                          'Percentage: ${exam['percentage']}',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only (bottom: 30),
          child: Center(
            child: Container(
              width: 272.w,
              height: 94.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.transparent, //
                borderRadius: BorderRadius.circular(10.r), // White outer circle
                border: Border.all(
                  color: Colors.black, // Outer black border color
                  width: 2, // Outer black border width
                ),
              ),
              child: Center(
                  child: Container(
                width: 250.w,
                height: 78.h,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xFF2AF62A),
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                child: Center(
                  child: Text(
                    'pass',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
              )),
            ),
          ),
        )
      ]),
    );
  }
}
