import 'package:figma/Page/checkount_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  // List<Chat> items = List.of(Data.chats);
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
              elevation: 0,
              leading: Padding(
                padding: EdgeInsets.only(top: 30.h, left: 30.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Icon(Icons.arrow_back_ios,
                      size: 23.sp, color: Colors.black),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Text(
                  "Cart",
                  style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/qol.png',
                            width: 20.w,
                            height: 22.h,
                          ),
                          Text(
                            "swipe on an item to delete",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.55,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (content, index) {
                            return Column(
                              children: [
                                Slidable(
                                  endActionPane: ActionPane(
                                    motion: ScrollMotion(),
                                    children: [
                                      Container(
                                        width: 45.w,
                                        height: 45.w,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite_outline,
                                            color: Colors.white,
                                            size: 30.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20.w),
                                      Container(
                                        width: 45.w,
                                        height: 45.w,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(100.r)),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 14.h),
                                      width: 315.w,
                                      height: 105.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.r)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/image/cart_taom.png",
                                            width: 100.w,
                                            height: 105.h,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                width: 200.w,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 30.h),
                                                  child: Text(
                                                    "Tomato Veggie",
                                                    style: TextStyle(
                                                        fontSize: 17.sp),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 200.w,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10.h),
                                                      child: Text(
                                                        "GHS 8.00",
                                                        style: TextStyle(
                                                            fontSize: 15.sp,
                                                            color: Colors
                                                                .orange[800]),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 52.w,
                                                      height: 20.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Colors
                                                              .orange[800]),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Text(
                                                            "-",
                                                            style: TextStyle(
                                                                fontSize: 15.sp,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          Text(
                                                            "1",
                                                            style: TextStyle(
                                                                fontSize: 15.sp,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          Text(
                                                            "+",
                                                            style: TextStyle(
                                                                fontSize: 15.sp,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 314.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Checkount(),
                                  ));
                            });
                          },
                          child: Center(
                            child: Text(
                              "Complete order",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

void doNothing(BuildContext context) {}
