import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExamsScreen extends StatelessWidget {
  const ExamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
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
                    'Exams',
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
            indicator: BoxDecoration(
              color: const Color(0xFF182243), // Tab selected color
              borderRadius: BorderRadius.circular(10.r), // Rounded corners
            ),
            dividerColor: Colors.transparent,
            labelColor: Colors.white,
            // Label color when selected
            unselectedLabelColor: const Color(0xFF3F3D3D),
            // Label color when not selected
            tabs: [
              Tab(
                child: Container(
                  width: 151.w,
                  height: 56.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Offline',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 151.w,
                  height: 56.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0xFF182243), // Border color for unselected tab
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Online',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
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

                ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  itemCount: 1, // Number of items in the list
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      // Add margin between items
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
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                'Exam Name  ',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 100.w,),

                              Text(
                                '10-01-2024  ',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),


                            ],
                          ),
                          SizedBox(height: 15 .h,),

                          Row(

                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                'Mid Year',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 145.w,),

                              Text(
                                '9 : 00 AM',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),

                            ],
                          ),


                        ],
                      ),
                    );
                  },
                ),



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
                      title = 'Exam Name  ';
                      fileName = 'Mid term Math ';
                      Class = '01-12-2023 ';
                      time = '11 : 00 AM';
                    } else {
                      title = 'Exam Name';
                      fileName = 'Mid term Science';
                      Class = '03-12-2023';
                      time = '11 : 00 AM';
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
                                width:  5.w,
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 60.w,),
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
                              SizedBox(width: 60.w,),
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

              ],
            ),
          ),
        ]),
      ),
    );
  }
}
