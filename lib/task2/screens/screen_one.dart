import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:untitled6/task2/itmes/grid_items.dart';
import 'package:untitled6/task2/screens/screen_two.dart';
import 'package:untitled6/task4/assignments.dart';
import 'package:untitled6/task4/attendance.dart';
import 'package:untitled6/task4/exams.dart';
import 'package:untitled6/task4/result_pass.dart';
import 'package:untitled6/task4/time_table.dart';

class StudentMenu extends StatelessWidget {
  final GridItems gridItems = GridItems(); // Initialize the grid items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea( // Wrap the Drawer content with SafeArea
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Replace DrawerHeader with Container to control the height
              Container(
                height: 100.h, // Set your desired height
                decoration: BoxDecoration(
                  color: Color(0xFF182243),
                ),
                padding: EdgeInsets.all(10), // Control internal padding
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              // Add border and border radius to each item
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 147.svg', width: 24),
                  title: Text('Teachers'),
                  onTap: () {
                      Get.to(() => Teachers()); // Example action
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 148.svg', width: 24),
                  title: Text('Attendance'),
                  onTap: () {
                    Get.to(() => AttendanceScreen());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 149.svg', width: 24),
                  title: Text('Assignments'),
                  onTap: () {
                    Get.to(() => AssignmentsScreen());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 150.svg', width: 24),
                  title: Text('Time Table'),
                  onTap: () {
                    Get.to(() => TimeTable());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 151.svg', width: 24),
                  title: Text('Exams'),
                  onTap: () {
                    Get.to(() => ExamsScreen());
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 152.svg', width: 24),
                  title: Text('Result'),
                  onTap: () {
                    Get.to(() => ResultScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Container(
                    width: 390.w,
                    height: 139.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF182243),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.r),
                        bottomRight: Radius.circular(25.r),
                      ),
                    ),
                  ),
                  Positioned(right: 0, child: Image.asset('assets/design.png')),
                  Positioned(
                    left: 20,
                    bottom: 25,
                    child: Image.asset('assets/profile_picutre.png'),
                  ),
                  Positioned(
                    bottom: 65,
                    left: 130,
                    child: Text(
                      'Ahmed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Positioned button to open the endDrawer using Builder
                  Positioned(
                    right: 20,
                    top: 20,
                    child: Builder(
                      builder: (context) {
                        return IconButton(
                          icon: Icon(Icons.menu, color: Colors.white, size: 30),
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer(); // Opens the endDrawer
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            TabBar(
              indicator: BoxDecoration(
                color: const Color(0xFF182243),
                borderRadius: BorderRadius.circular(10.r),
              ),
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: const Color(0xFF3F3D3D),
              tabs: [
                Tab(
                  child: Container(
                    width: 151.w,
                    height: 56.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF182243),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Subjects',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
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
                        color: const Color(0xFF182243),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Tracking',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 68.h),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: gridItems.items.length,
                    itemBuilder: (context, index) {
                      final item = gridItems.items[index];
                      return Column(
                        children: [
                          MaterialButton(
                            onPressed: () {
                               Get.to(AssignmentsScreen());
                              print('Tapped on ${item.text}');
                            },
                            padding: EdgeInsets.zero,
                            child: Container(
                              width: 109.w,
                              height: 90.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(item.imagePath),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            item.text,
                            style: TextStyle(fontSize: 16.sp, color: Colors.black),
                          ),
                        ],
                      );
                    },
                  ),
                  const Center(child: Text('Content for Tab 2')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
