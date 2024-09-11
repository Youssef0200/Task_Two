import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled6/task3/component/button.dart';
import 'package:untitled6/task3/items/cart_items.dart';
import 'package:untitled6/task3/Screens/success.dart';
class MyCart extends StatelessWidget {
  const MyCart({super.key});

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
                    'My Cart ',
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
          SizedBox(height: 30.h,),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemCount: CartItems().items.length,
              itemBuilder: (context, index) {
                final cart = CartItems().items[index]; // Access each teacher item

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
                        right: 50,
                        top: 40,
                        child: Image.asset(cart.imagePath), // Using image from teacherItems
                      ),
                      Positioned(
                        top: 15,
                        left: 15,
                        child: Text(
                          cart.name,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                          ),
                        ),
                      ),

                      Positioned(
                        top: 50,
                        left: 15,
                        child:
                        Text(
                          cart.id,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2D2D2D),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 85,
                        left: 15,
                        child: Text(
                          cart.level,
                          style:  TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2D2D2D),
                          ),
                        ),
                      ),Positioned(
                        top: 120,
                        left: 15,
                        child: Text(
                          cart.amount,
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
          SizedBox(height: 330.h,),
          Text('Total amount :  112\$'),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: defaultButton(function: () {
              Get.to(SuccessScreen());

            }, text: 'check out'),
          )

        ],
      ),
    );
  }
}
