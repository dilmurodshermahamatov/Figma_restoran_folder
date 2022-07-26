import 'package:figma/Orders_folder/ordeer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Checkount extends StatefulWidget {
  const Checkount({Key? key}) : super(key: key);

  @override
  State<Checkount> createState() => _CheckountState();
}

class _CheckountState extends State<Checkount> {
  Object value = false;

  Object typ = false;
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
                "Checkout",
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 30.w),
                  child: Text(
                    "Payment",
                    style:
                        TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 30.w),
                  child: Text(
                    "Payment method",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h),
                width: 348.w,
                height: 167.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Radio(
                            activeColor: Colors.orange[800],
                            value: "w",
                            groupValue: value,
                            onChanged: (e) {
                              setState(() {});
                              value = e!;
                            }),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: Colors.orange[600],
                              borderRadius: BorderRadius.circular(10.r)),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Divider(color: Colors.grey[400]),
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: Colors.orange[800],
                            value: "R",
                            groupValue: value,
                            onChanged: (e) {
                              setState(() {});
                              value = e!;
                            }),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 57.h, left: 54.w),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Delivery method.",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h),
                width: 315.w,
                height: 165.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    RadioListTile(
                        activeColor: Colors.orange[800],
                        title: Text(
                          "Door delivery",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w400),
                        ),
                        value: "T",
                        groupValue: typ,
                        onChanged: (e) {
                          setState(() {
                            typ = e!;
                          });
                        }),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Divider(color: Colors.grey[600]),
                    ),
                    RadioListTile(
                        title: Text(
                          "Pick up",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w400),
                        ),
                        activeColor: Colors.orange[800],
                        value: "G",
                        groupValue: typ,
                        onChanged: (e) {
                          setState(() {
                            typ = e!;
                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "23,000",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 13),
              Container(
                width: 314.w,
                height: 70.h,
                decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: TextButton(
                    onPressed: () {
                      setState(() {});
                      showDialog(
                        context: context,
                        builder: (BuildContext content) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0.r))),
                          contentPadding: EdgeInsets.only(top: 0.0.h),
                          content: Container(
                            width: 300.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(30.0.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0.r),
                                        topRight: Radius.circular(30.0.r)),
                                    color: Colors.grey[200],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 30.w),
                                    child: Text(
                                      "Please note",
                                      style: TextStyle(fontSize: 24.0.sp),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 18.0.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.0.w, right: 30.0.w),
                                  child: Text(
                                    "Delivery to trasaco",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Text(
                                    "GHS 2 - GH 3",
                                    style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.w, vertical: 20.h),
                                  child: Divider(
                                    height: 4.h,
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.0.w, right: 30.0.w),
                                  child: Text(
                                    "Delivery to campus",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.w, bottom: 40.h),
                                  child: Text(
                                    "GHS 1",
                                    style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 20.h, left: 10.w),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 160.w,
                                      height: 60.h,
                                      margin: EdgeInsets.only(bottom: 20.0.h),
                                      decoration: BoxDecoration(
                                          color: Colors.orange[800],
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        OrderList(),
                                                  ));
                                            });
                                          },
                                          child: Text(
                                            "Proceed",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Proceed to payment",
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
