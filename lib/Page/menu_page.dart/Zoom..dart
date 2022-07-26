
import 'package:figma/Cards_Folder/Card_2.dart';
import 'package:figma/Malumot.dart';
import 'package:figma/Page/ViewPage.dart';
import 'package:figma/Page/chiken_page.dart';
import 'package:figma/Page/menu_page.dart/zoom_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ZoomState createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  @override
  Widget build(BuildContext context) {
    return const Zooom();
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TwoPanels(),
    );
  }
}

//

class TwoPanels extends StatefulWidget {
  const TwoPanels({Key? key}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[50],
            elevation: 0.0,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.w, top: 20.h),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyCard(),
                        ));
                  },
                  icon: Image.asset(
                    "assets/icons/korzinka.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
              ),
            ],
            leading: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: IconButton(
                icon: Image.asset(
                  "assets/icons/menu.png",
                  width: 40.w,
                  height: 40.h,
                ),
                onPressed: () {
                  _drawerController.toggle!();
                },
              ),
            ),
          ),
          body: Korzinka(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}

class Zooom extends StatefulWidget {
  const Zooom({Key? key}) : super(key: key);

  @override
  State<Zooom> createState() => _State();
}

class _State extends State<Zooom> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      borderRadius: 30.r,
      angle: 0.0,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      openCurve: Curves.ease,
      menuBackgroundColor: const Color(0xFFEF6C00),
      // slideWidth: MediaQuery.of(context).size.width * 0.60,
      duration: const Duration(milliseconds: 500),
      mainScreen: const Body(),
      menuScreen: const Zoom_Page(),
    );
  }
}

/////////////////////////////////

class Korzinka extends StatefulWidget {
  const Korzinka({Key? key}) : super(key: key);

  @override
  State<Korzinka> createState() => _KorzinkaState();
}

final ZoomDrawerController _drawerController = ZoomDrawerController();

class _KorzinkaState extends State<Korzinka> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  int? value;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, right: 100.w),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 200.w,
                      height: 100.h,
                      child: Text(
                        "Delicious \nfood for you",
                        style: TextStyle(
                            fontSize: 34.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Chiken(),
                              ));
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.h),
                        width: 314.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: Icon(
                                Icons.search,
                                size: 30.sp,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0.w),
                              child: Text(
                                "Search",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h, left: 5.w, right: 5.w),
                    child: TabBar(
                      onTap: (e) {
                        setState(() {
                          value = e;
                        });
                      },
                      indicatorColor: Colors.orange,
                      indicatorWeight: 3,
                      controller: _tabController,
                      indicatorPadding: EdgeInsets.all(3.h),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          child: Text(
                            Malumait.pagenomi[0],
                            style: TextStyle(
                                color: value == 0 ? Colors.orange : Colors.grey,
                                fontSize: 15.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            Malumait.pagenomi[1],
                            style: TextStyle(
                                color: value == 1 ? Colors.orange : Colors.grey,
                                fontSize: 15.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            Malumait.pagenomi[2],
                            style: TextStyle(
                                color: value == 2 ? Colors.orange : Colors.grey,
                                fontSize: 15.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            Malumait.pagenomi[3],
                            style: TextStyle(
                                color: value == 3 ? Colors.orange : Colors.grey,
                                fontSize: 15.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            Malumait.pagenomi[4],
                            style: TextStyle(
                                color: value == 4 ? Colors.orange : Colors.grey,
                                fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.w),
                    height: MediaQuery.of(context).size.height / 2.7.h,
                    width: 700.w,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2.7.h,
                          width: 400.w,
                          margin: EdgeInsets.only(
                              left: 0.w, top: 30.h, right: 20.w),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (content, i) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (content) =>
                                                    const ViewPage()),
                                          );
                                        });
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                              width: 200.w,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  2),
                                          Positioned(
                                            top: 40.h,
                                            child: GestureDetector(
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 20.w),
                                                  alignment: Alignment.center,
                                                  width: 180.w,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      3,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurStyle:
                                                            BlurStyle.outer,
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset:
                                                            const Offset(0, 3),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 150.h),
                                                        child: Text(
                                                          "    Veggie \n tomato mix",
                                                          style: TextStyle(
                                                              fontSize: 22.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 30.h),
                                                        child: Text(
                                                          "N1,900",
                                                          style: TextStyle(
                                                              fontSize: 16.sp,
                                                              color: Colors
                                                                  .orange[700]),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.r)),
                                              width: 180.w,
                                              height: 220.h,
                                              margin:
                                                  EdgeInsets.only(left: 20.w),
                                              child: Image.asset(
                                                "assets/image/image.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 250,
                                height: 250,
                                child: const CircularProgressIndicator(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 250,
                                height: 250,
                                child: const CircularProgressIndicator(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 250,
                                height: 250,
                                child: const CircularProgressIndicator(
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 250,
                                height: 250,
                                child: const CircularProgressIndicator(
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 26,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
