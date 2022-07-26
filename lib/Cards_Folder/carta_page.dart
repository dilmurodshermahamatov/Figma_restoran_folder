import 'package:figma/Page/ViewPage.dart';
import 'package:figma/Page/asosiy_page/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Object? _radio;
  bool bol = false;
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
              centerTitle: true,
              title: Text(
                "My profile",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 30.w),
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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 35.w),
                  child: Text(
                    "Information",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(left: 35.w, right: 35.w),
                  height: 140.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30.h, left: 10.w),
                        width: 60.w,
                        height: 60.h,
                        child: Image.asset(
                          "assets/image/cart_image.png",
                          width: 60.w,
                          height: 60.h,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 10.w),
                            child: Text(
                              "Thelma Sara-bear",
                              style: TextStyle(
                                  fontSize: 18.sp, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Text(
                              "thelma_sara-bear@gmail.com",
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.grey[600]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 10.w),
                            child: Text(
                              "Trasaco hotel, behind navrongo \n campus",
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.grey[600]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 40.w, bottom: 20.h),
                  child: Text(
                    "Payment Method",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  margin: EdgeInsets.only(left: 35.w, right: 35.w),
                  height: MediaQuery.of(context).size.height / 3.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.orange[800],
                            value: "R",
                            groupValue: _radio,
                            onChanged: (i) {
                              setState(() {
                                _radio = i;
                              });
                            },
                          ),
                          Container(
                            width: 35.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                            ),
                            child: Image.asset("assets/icons/radio.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              "Card",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey[400]),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.orange[800],
                            value: "F",
                            groupValue: _radio,
                            onChanged: (e) {
                              setState(() {
                                _radio = e;
                              });
                            },
                          ),
                          Container(
                            width: 35.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[300],
                            ),
                            child: Image.asset("assets/icons/radio1.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              "Mobile Money (MTN,VODA)",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      Divider(color: Colors.grey[400]),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.orange[800],
                            value: "S",
                            groupValue: _radio,
                            onChanged: (r) {
                              setState(() {
                                _radio = r;
                              });
                            },
                          ),
                          Container(
                            width: 35.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[700],
                            ),
                            child: Image.asset("assets/icons/radio2.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              "Pay on delivery",
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 12),
                Center(
                  child: Container(
                    alignment: Alignment.center,
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
                            // ignore: prefer_const_constructors
                            MaterialPageRoute(builder: (context) => ViewPage()),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          "Update Information",
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
