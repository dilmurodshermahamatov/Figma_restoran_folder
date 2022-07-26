import 'package:figma/Cards_Folder/Card_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final PageController _pageController = PageController();
  int _i = 1;
  // ignore: unused_field
  int? _index;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
              leading: Padding(
                padding: EdgeInsets.only(top: 30.h, left: 30.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Icon(Icons.arrow_back_ios,
                      size: 20.sp, color: Colors.black),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 30.w, top: 30.h),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                    size: 23.sp,
                  ),
                ),
              ],
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 400.w,
                      height: MediaQuery.of(context).size.height / 3.5,
                      margin: EdgeInsets.only(top: 0.h),
                      child: PageView.builder(
                        onPageChanged: (e) {
                          _i = e;
                          setState(() {});
                        },
                        itemCount: 4,
                        controller: _pageController,
                        itemBuilder: (context, index) {
                          _index = index;
                          return Container(
                            child: Image.asset(
                              "assets/image/page.png",
                              width: 400.w,
                              height: MediaQuery.of(context).size.height / 3.5,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _i = 0;
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(0,
                                    duration: Duration(milliseconds: 50),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0.h),
                            child: CircleAvatar(
                              radius: _i == 0 ? 8 : 6.r,
                              backgroundColor:
                                  _i == 0 ? Colors.orange : Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _i = 1;
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(1,
                                    duration: Duration(milliseconds: 50),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: CircleAvatar(
                            radius: _i == 1 ? 8 : 6.r,
                            backgroundColor:
                                _i == 1 ? Colors.orange : Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _i = 2;
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(2,
                                    duration: Duration(milliseconds: 50),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0.h),
                            child: CircleAvatar(
                              radius: _i == 2 ? 8 : 6.r,
                              backgroundColor:
                                  _i == 2 ? Colors.orange : Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _i = 3;
                            setState(() {
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(3,
                                    duration: Duration(milliseconds: 50),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: CircleAvatar(
                            radius: _i == 3 ? 8 : 6.r,
                            backgroundColor:
                                _i == 3 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        "Tomato Veggie  ",
                        style: TextStyle(
                            fontSize: 28.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        "GHS 8.00",
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.orange[800],
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.w, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Delivery info",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: 230.w,
                    margin: EdgeInsets.only(right: 105.w, top: 5),
                    child: Text(
                      "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 40.w, top: 20),
                    child: Text(
                      "Return policy",
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 250.w,
                    margin: EdgeInsets.only(right: 85.w, top: 5),
                    child: Text(
                      "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 11),
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
                            MaterialPageRoute(builder: (context) => MyCard()),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp),
                        ),
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
