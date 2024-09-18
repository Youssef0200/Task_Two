import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: Column(children: [
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
                    'Time Table',
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

          TabBar(
             isScrollable: true,
            indicator: BoxDecoration(
              color: const Color(0xFF182243), // Tab selected color
              borderRadius: BorderRadius.circular(10.r), // Rounded corners
            ),
            dividerColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: const Color(0xFF3F3D3D),
            tabs: [
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Sun',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Mon',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Tue',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Wed',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Thu',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Fri',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 46.w,
                  height: 34.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Sat',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 68.h,
          ),
          // TabBarView Section (Tab content)
          Expanded(
            child: TabBarView(
              children: [
                Center(child: const Text('sunday content ')),
                Center(child: const Text('monday content ')),
                Center(child: const Text('tuesday content ')),

                // Second Tab with ListView.builder
                ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  itemCount: 2, // Number of items in the list
                  itemBuilder: (context, index) {
                    // Define the content based on the index
                    String title;
                    String fileName;
                    String Class;
                    String time ;

                    if (index == 0) {
                      title = 'Science  ';
                      fileName = 'Basic Of Science Ch 1';
                      Class = 'Class: 3 ';
                      time = '9 : 00 AM';
                    } else {
                      title = 'Math';
                      fileName = 'Intro Of Math Ch 2';
                      Class = 'Class : 3';
                      time = '10 : 00 AM';
                    }

                    return Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      width: 355.w,
                      height: 117.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.r),
                        color: Color(0xFFF6F6F6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 160.w,),
                              Text(Class,style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(height: 15.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                fileName,
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 35.w,),
                              Text(time,
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),


                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Center(child: const Text('thursday content ')),
                Center(child: const Text('friday content ')),
                Center(child: const Text('saturday content ')),

              ],
            ),
          ),


        ]),
      ),
    );
  }
}
