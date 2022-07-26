import 'package:figma/Orders_folder/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.red,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, left: 30.w),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.r,
                      child: Image.asset(
                        "assets/icons/shabka.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Text(
                      "CALEB G",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 10.h),
                    child: Text(
                      "Restaurant",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.only(left: 200.w, top: 80.h),
                            width: 440.w,
                            height: MediaQuery.of(context).size.height / 2.5.h,
                            child: Image.asset(
                              "assets/icons/ogilbola.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          width: 500.w,
                          height: MediaQuery.of(context).size.height / 2.5.h,
                          child: Padding(
                            padding: EdgeInsets.only(right: 200.w),
                            child: Container(
                              width: 450.w,
                              height:
                                  MediaQuery.of(context).size.height / 2.5.h,
                              child: Image.asset(
                                "assets/icons/qizbola.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  Center(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.r)),
                      width: 314.w,
                      height: 70.h,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          side: BorderSide(width: 2.w, color: Colors.white),
                        ),
                        child: Center(
                          child: Text(
                            "Get State",
                            style:
                                TextStyle(color: Colors.red, fontSize: 20.sp),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          });
                        },
                      ),
                    ),
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
