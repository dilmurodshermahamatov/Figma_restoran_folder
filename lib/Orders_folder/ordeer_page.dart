import 'package:figma/Page/asosiy_page/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
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
                      size: 23.sp, color: Colors.black),
                ),
              ),
              backgroundColor: Colors.grey[100],
              elevation: 0,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Order Complete",
                    style: TextStyle(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 38.h),
                  Image.asset("assets/image/group.png"),
                  SizedBox(height: 38.h),
                  Text(
                    "Thank you for  Ordering",
                    style:
                        TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    " Your devliery will be in \n soon.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.sp, color: Colors.grey[500]),
                  )
                ],
              ),
            ),
          );
        });
  }
}
