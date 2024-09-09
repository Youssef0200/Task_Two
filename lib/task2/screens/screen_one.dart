import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:untitled6/task2/itmes/grid_items.dart';
import 'package:untitled6/task2/screens/screen_two.dart';
class StudentMenu extends StatelessWidget {
  final GridItems gridItems = GridItems(); // Initialize the grid items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    decoration:  BoxDecoration(
                      color: Color(0xFF182243),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.r),
                        bottomRight: Radius.circular(25.r),
                      ),
                    ),
                  ),
                  Positioned(right: 0, child: Image.asset('assets/design.png')),
                  Positioned(
                    bottom: 55,
                    right: 20,
                    child: MaterialButton(
                      onPressed: () {
                        // Directly show the popup menu without showing a button first
                        Get.dialog(
                          TweenAnimationBuilder<double>(
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: const Duration(milliseconds: 300), // Slow down the animation
                            builder: (context, value, child) {
                              return Opacity(
                                opacity: value,
                                child: Transform.scale(
                                  scale: value, // Popup grows from small to full size
                                  child: child,
                                ),
                              );
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              // Adjust this to move right and top
                              child: Container(
                                width: 317.w,
                                height: 510.h,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(top: 65),
                                // Control position
                                decoration:  BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(27.r),
                                      bottomLeft: Radius.circular(27.r),
                                      bottomRight: Radius.circular(27.r)),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      spreadRadius: 5,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    buildMenuItem(
                                      svgPath: 'assets/Group 147.svg',
                                      text: 'Teachers',
                                      icon: Icons.arrow_forward_ios_outlined,
                                    ),
                                    buildMenuItem(
                                      svgPath: 'assets/Group 148.svg',
                                      text: 'Attendance',
                                      icon: Icons.arrow_forward_ios_outlined,
                                    ),
                                    buildMenuItem(
                                      svgPath: 'assets/Group 149.svg',
                                      text: 'Assignments',
                                      icon: Icons.arrow_forward_ios_outlined,
                                    ),
                                    buildMenuItem(
                                      svgPath: 'assets/Group 150.svg',
                                      text: 'Time Table',
                                      icon: Icons.arrow_forward_ios_outlined,
                                    ),
                                    buildMenuItem(
                                      svgPath: 'assets/Group 151.svg',
                                      text: 'Exams',
                                      icon: Icons.arrow_forward_ios_outlined,
                                    ),
                                    buildMenuItem(
                                      svgPath: 'assets/Group 152.svg',
                                      text: 'Result',
                                      icon: Icons.arrow_forward_ios_outlined,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          barrierDismissible: true,
                        );
                      },
                      child: SvgPicture.asset('assets/menu.svg'),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      bottom: 25,
                      child: Image.asset('assets/profile_picutre.png')),
                   Positioned(
                    bottom: 65,
                    left: 130,
                    child: Text(
                      'Ahmed',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            // TabBar Section with specific width and height for each tab using Container
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
                    child:  Text(
                      'Subjects',
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
                    child:  Text(
                      'Tracking',
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
                  GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // 3 items per row
                      crossAxisSpacing: 10, // Spacing between columns
                      mainAxisSpacing: 10, // Spacing between rows
                      childAspectRatio:
                      0.75, // Aspect ratio to allow space for text below the image
                    ),
                    itemCount: gridItems.items.length,
                    // Use the grid item length
                    itemBuilder: (context, index) {
                      final item = gridItems.items[index]; // Get each grid item
                      return Column(
                        children: [
                          // Container for the image
                          MaterialButton(
                            onPressed: () {
                              // Perform an action when the grid cell is tapped
                              print('Tapped on ${item.text}');
                              // You can also navigate to another page or trigger any function here
                            },
                            padding: EdgeInsets.zero,
                            // Remove padding to fit the container exactly
                            child: Container(
                              width: 109.w,
                              // Full width
                              height: 90.h,
                              // Set a fixed height for the image container
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(item.imagePath),
                                  fit: BoxFit
                                      .cover, // Cover the entire container
                                ),
                                borderRadius: BorderRadius.circular(
                                    10.r), // Rounded corners
                              ),
                            ),
                          ),
                           SizedBox(height: 8.h), // Space between image and text
                          // Text below the image
                          Text(
                            item.text,
                            style:  TextStyle(fontSize: 16.sp, color: Colors.black),
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

  // Reuse the buildMenuItem method from the CustomPopupMenu code
  Widget buildMenuItem({required IconData icon, required String svgPath, required String text}) {
    return GestureDetector(
      onTap: () {
        Get.back(); // Close the dialog using Get
        if (text == 'Teachers') {
          Get.to(() => Teachers()); // Navigate to TeachersScreen
        }
        print('Selected: $text'); // Add an action for the selected item
      },
      child: Container(
        width: 301.w,
        height: 68.h,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 10,),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svgPath,
              height: 52.h, // Adjust the size of the SVG image
              width: 56.w,
            ),
             SizedBox(width: 20.w),
            Text(
              text,
              style:  TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF130F44),
                decoration: TextDecoration.none, // No underline
              ),
            ),
            const Spacer(),
            Icon(
              icon,  // The trailing icon after the text
              color: const Color(0xFF656060),  // Set the icon color
              size: ScreenUtil().setSp(24),  // Adjust the size of the trailing icon
            ),
          ],
        ),
      ),
    );
  }
}