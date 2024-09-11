import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled6/task3/component/change_passowrd.dart';
import '../items/setting_items.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isLanguageExpanded = false;
  Map<int, bool> expandedItems = {};
  String selectedLanguage = 'English'; // Default language selection

  void toggleLanguageExpansion() {
    setState(() {
      isLanguageExpanded = !isLanguageExpanded;
    });
  }

  void toggleItemExpansion(int index) {
    setState(() {
      expandedItems[index] = !(expandedItems[index] ?? false);
    });
  }

  void selectLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                      'Settings',
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
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: SettingItems().items.length,
                itemBuilder: (context, index) {
                  final setting = SettingItems().items[index];

                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 32.h),
                        child: Container(
                          width: 340.w,
                          height: 50.h,
                          child: MaterialButton(
                            onPressed: () {
                              if (setting.title == 'Language') {
                                toggleLanguageExpansion();
                              } else if (setting.title == 'profile') {
                                toggleItemExpansion(index);
                              }
                            },
                            child: Row(
                              children: [
                                Image.asset(setting.imagePath),
                                SizedBox(width: 24.w),
                                Container(
                                  width: 200.w,
                                  child: Text(
                                    setting.title,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF130F44),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                                Spacer(),
                                if (setting.title != 'Log Out')
                                  Icon(
                                    (setting.title == 'Language' &&
                                        isLanguageExpanded) ||
                                        (expandedItems[index] == true)
                                        ? Icons.expand_more // Down arrow when expanded
                                        : Icons.arrow_forward_ios_outlined, // Right arrow when collapsed
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // If "Profile" is expanded, show "Change Password"
                      if (setting.title == 'profile' &&
                          expandedItems[index] == true)
                        Padding(
                          padding: EdgeInsets.only(left: 50.w, bottom: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text("Change Password",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold)),
                                onTap: () {
                                  showChangePasswordBottomSheet(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      // If "Language" is expanded, show language options
                      if (setting.title == 'Language' && isLanguageExpanded)
                        Padding(
                          padding: EdgeInsets.only(left: 50.w, bottom: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text("English",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                trailing: selectedLanguage == "English"
                                    ? Icon(Icons.check, color: Colors.green)
                                    : null,
                                onTap: () {
                                  selectLanguage("English");
                                },
                              ),
                              SizedBox(height: 10.h),
                              ListTile(
                                title: Text("العربية",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                trailing: selectedLanguage == "العربية"
                                    ? Icon(Icons.check, color: Colors.green)
                                    : null,
                                onTap: () {
                                  selectLanguage("العربية");
                                },
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}