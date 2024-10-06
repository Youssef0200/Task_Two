import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Addresses extends StatelessWidget {
    Addresses({super.key});

  // Firestore instance
  final CollectionReference addresses = FirebaseFirestore.instance.collection('addresses');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Column(
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
                      'Addresses',
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
            SizedBox(height: 38.h),
            // Using StreamBuilder to retrieve data from Firebase Firestore
            StreamBuilder<QuerySnapshot>(
              stream: addresses.snapshots(), // Realtime updates from Firestore
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }

                if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
                  // Display data in the column (excluding the phone number)
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      var addressData = snapshot.data!.docs[index];

                      return Container(
                        width: 343.w,
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Address: ${addressData['address']}", style: TextStyle(fontSize: 16.sp)),
                            Text("City: ${addressData['city']}", style: TextStyle(fontSize: 16.sp)),
                            Text("Region: ${addressData['region']}", style: TextStyle(fontSize: 16.sp)),
                            Text("Zip Code: ${addressData['zipCode']}", style: TextStyle(fontSize: 16.sp)),
                            // Phone number is excluded
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Text("No addresses found");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
