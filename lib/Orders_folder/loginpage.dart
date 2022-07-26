import 'package:figma/Page/asosiy_page/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late TabController _controller;
  final bool _obs = true;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              leading: const Icon(null),
              toolbarHeight: 280.h,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: Column(
                children: [
                  Container(
                    height: 280.h,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 60.h),
                            child: Image.asset(
                              "assets/icons/shapka2.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
              bottom: TabBar(
                indicatorPadding: EdgeInsets.only(left: 30.w, right: 30.w),
                indicatorColor: Colors.red,
                controller: _controller,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Color.fromRGBO(236, 236, 236, 1),
            body: Container(
              child: TabBarView(
                controller: _controller,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text(
                              "Email address",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 10.h),
                        child: TextField(
                          obscuringCharacter: '*',
                          obscureText: _obs,
                          decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 35.w, top: 20.h),
                        child: Text(
                          "Forgot passcode?",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox( height: MediaQuery.of(context).size.height / 4.5),
                      Container(
                        alignment: Alignment.bottomCenter,
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
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                    //
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text(
                              "Email address",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 10.h),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text(
                              "Phone Number",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 10.h),
                        child: TextField(
                          obscuringCharacter: '*',
                          obscureText: _obs,
                          decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 35.w, top: 20.h),
                        child: Text(
                          "Forgot passcode?",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 9),
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
                            "Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
