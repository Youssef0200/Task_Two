import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/task3/component/button.dart';

class AddAddress extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _addressController=TextEditingController();
  final _cityController=TextEditingController();
  final _regionController=TextEditingController();
  final _zipCodeController=TextEditingController();
  final _phoneController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Form(
          key:_formKey,
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
                        'Address',
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
                height: 38.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller:_addressController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:Colors.white,
                        labelText: 'Address',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Color(0xFF182243), width: 2.0),
        
        
                      )),
                      validator: (address) =>address!.length< 3 ? 'please write your address':null ,
                    ),
                    SizedBox(height: 20.h,),
                    TextFormField(
                      controller:_cityController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:Colors.white,
                        labelText: 'City',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Color(0xFF182243), width: 2.0),
        
        
                      )),
                      validator: (address) =>address!.length< 3 ? 'please write your city':null ,
                    ),
                    SizedBox(height: 20.h,),
                    TextFormField(
                      controller:_regionController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white,
                          labelText: 'State/Province/Region',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Color(0xFF182243), width: 2.0),
        
        
                          )),
                      validator: (address) =>address!.length< 3 ? 'please write your State/Province/Region':null ,
                    ),
                    SizedBox(height: 20.h,),
                    TextFormField(
                      controller:_zipCodeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white,
                          labelText: 'Zip Code (Postal Code)',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Color(0xFF182243), width: 2.0),
        
        
                          )),
                      validator: (address) =>address!.length< 3 ? 'please write your Zip Code (Postal Code)':null ,
                    ),
                    SizedBox(height: 20.h,),
                    TextFormField(
                      controller:_phoneController,
                      keyboardType:TextInputType.phone,
                      decoration: InputDecoration(

                        prefixText: '+966  ',
                          filled: true,
                          fillColor:Colors.white,
                          labelText: 'Phone',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(4.r),borderSide: BorderSide(color: Color(0xFF182243), width: 2.0),
        
        
        
                          )),
                      validator: (address) =>address!.length< 3 ? 'please write your Phone':null ,
                    ),
                    SizedBox(height: 79.h,),
                    defaultButton(function: () {
                      _formKey.currentState!.validate();
                      
                    }, text: 'SAVE ADDRESS')

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
