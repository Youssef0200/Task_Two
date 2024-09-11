import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled6/task3/component/button.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200.h,),
            SvgPicture.asset('assets/bags.svg'),
            SizedBox(height: 60.h,),
            Text('Success!',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.h,),
            Text('Your order will be delivered soon.\nThank you for choosing our app!'),
            SizedBox(height: 110.h,),
            defaultButton(function: () {

            }, text: 'CONTINUE')

          ],
        ),
      ),
    );
  }
}
