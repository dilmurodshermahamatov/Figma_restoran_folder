import 'package:figma/Page/asosiy_page/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              backgroundColor: Colors.grey[100],
              title: Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Text("History",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                        color: Colors.black)),
              ),
              centerTitle: true,
              elevation: 0,
              leading: Padding(
                padding: EdgeInsets.only(top: 30.h, left: 30.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListPage(),
                          ));
                    });
                  },
                  child: Icon(Icons.arrow_back_ios,
                      size: 25.sp, color: Colors.black),
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110.w,
                    height: 120.h,
                    margin: EdgeInsets.only(top: 180.h),
                    child: Image.asset(
                      "assets/image/vektor.png",
                      width: 110.w,
                      height: 120.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Text(
                      "No history yet",
                      style: TextStyle(
                          fontSize: 28.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Hit the orange button down \n   below to Create an order",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 4.4),
                  Container(
                    width: 314.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListPage()),
                          );
                        });
                      },
                      child: Text(
                        "Start ordering",
                        style:
                            TextStyle(color: Colors.white, fontSize: 17.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
