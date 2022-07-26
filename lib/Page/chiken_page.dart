
import 'package:figma/Malumot.dart';
import 'package:figma/Page/ViewPage.dart';
import 'package:figma/Page/asosiy_page/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chiken extends StatefulWidget {
  const Chiken({Key? key}) : super(key: key);

  @override
  State<Chiken> createState() => _ChikenState();
}

class _ChikenState extends State<Chiken> {
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
              toolbarHeight: 80.h,
              backgroundColor: Colors.grey[100],
              elevation: 0,
              title: Text(
                "Spicy chicken   |",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
              centerTitle: true,
              leading: Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ListPage()));
                    });
                  },
                  child: Icon(Icons.arrow_back_ios,
                      size: 20.sp, color: Colors.black),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Text(
                        "Found  6 results",
                        style: TextStyle(
                            fontSize: 28.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Container(
                          // padding: EdgeInsets.only(bottom: 20),
                          width: 414.w,
                          color: Colors.white,
                          height: 680.h,
                          child: GridView.builder(
                            itemCount: 6,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.center,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      top: 30.h,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ViewPage(),
                                                ));
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 156.w,
                                          height: 212.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurStyle: BlurStyle.outer,
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 110.h),
                                                child: Text(
                                                  Malumait.taomname[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10.h),
                                                child: Text(
                                                  Malumait.narxi[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.red),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0.h,
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40.r)),
                                        width: 170.w,
                                        height: 190.h,
                                        child: Image.asset(
                                          Malumait.image[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
