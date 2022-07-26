import 'package:figma/Page/asosiy_page/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Zoom_Page extends StatefulWidget {
  const Zoom_Page({Key? key}) : super(key: key);

  @override
  State<Zoom_Page> createState() => _Zoom_PageState();
}

class _Zoom_PageState extends State<Zoom_Page> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Color(0xFFEF6C00),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, bottom: 60.h, top: 90.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 15.0.h),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40.w,
                                  height: 60.h,
                                  child: Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.white,
                                    size: 28.sp,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2.w,
                                          color: Colors.transparent),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 100.w,
                                    height: 60.h,
                                    child: Text(
                                      "Profile",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.sp,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 1,
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0.h),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40.w,
                                  height: 60.h,
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color: Colors.white,
                                    size: 28.sp,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 2.w,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 100.w,
                                    height: 60.h,
                                    child: Text(
                                      "orders",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.sp),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0.h),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40.w,
                                  height: 60.h,
                                  child: Icon(
                                    Icons.local_offer_outlined,
                                    size: 28.sp,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2.w,
                                          color: Colors.transparent),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 100.w,
                                    height: 60.h,
                                    child: Text(
                                      "offer and promo",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.sp),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1,
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0.h),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40.w,
                                  height: 60.h,
                                  child: Icon(
                                    Icons.sticky_note_2_outlined,
                                    color: Colors.white,
                                    size: 28.sp,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2.h,
                                          color: Colors.transparent),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 100.w,
                                  height: 60.h,
                                  child: Text(
                                    "Privace policy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.sp),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: Colors.white.withOpacity(0.5)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0.h),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40.w,
                                  height: 60.h,
                                  child: Icon(
                                    Icons.security_outlined,
                                    color: Colors.white,
                                    size: 28.sp,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2.h,
                                          color: Colors.transparent),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 100.w,
                                  height: 60.h,
                                  child: Text(
                                    "Security",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.sp),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 2.h,
                                          color: Colors.transparent),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          width: 95.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sign_out",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 26.sp,
                              ),
                            ],
                          ),
                        ),
                        onTap: () async {
                          await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                              (route) => false);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
