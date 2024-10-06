import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled6/task3/Screens/add_address.dart';
import 'package:untitled6/task3/Screens/children.dart';
import 'package:untitled6/task3/Screens/my_cart.dart';
import 'package:untitled6/task3/component/change_passowrd.dart';
import 'package:untitled6/task3/items/profile_items.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                  decoration: BoxDecoration(
                    color: const Color(0xFF182243),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.r),
                      bottomRight: Radius.circular(25.r),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Image.asset('assets/design.png'),
                ),
                Positioned(
                  left: 20,
                  bottom: 25,
                  child: Image.asset('assets/profile_picutre.png'),
                ),
                Positioned(
                  bottom: 65,
                  left: 130,
                  child: Text(
                    'Mohamed',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 130,
                  bottom: 50,
                  child: Text(
                    'mohamed@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: ProfileItems().items.length,
              itemBuilder: (context, index) {
                final profile = ProfileItems().items[index];

                return GestureDetector(

                  onTap: () {
                    if (profile.title.trim() == 'Address') {
                      Get.to(AddAddress()); // Navigate to Address screen
                    } else if (profile.title.trim() == 'Children') {
                      Get.to(ChilderenScreen()); // Navigate to Children screen
                    } else if (profile.title.trim() == 'Cart') {
                      Get.to(MyCart()); // Navigate to Cart screen
                    }
                    else if (profile.title.trim() == 'Change Password') {
                      showChangePasswordBottomSheet(context); // Navigate to Change Password screen
                    }
                  },

                  child: Padding(
                    padding: EdgeInsets.only(bottom: 32.h),
                    child: Row(
                      children: [
                        Image.asset(profile.imagePath),
                        SizedBox(width: 24.w),
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            profile.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF130F44),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.visible,
                          ),
                  
                        ),
                        Spacer(),
                        Icon(profile.icon),
                      ],
                    ),
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
