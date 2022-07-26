import 'package:figma/Cards_Folder/carta_page.dart';
import 'package:figma/Orders_folder/history.dart';
import 'package:figma/Orders_folder/order_page.dart';
import 'package:figma/Page/menu_page.dart/Zoom..dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  static int son = 0;

  void _element(int i) {
    setState(() {
      son = i;
    });
  }

  static List<StatefulWidget> page = [
    const Zoom(),
    const Order(),
    const Cart(),
    const History(),
  ];
  double _i = 0;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.grey;
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            body: Center(
              child: page.elementAt(son),
            ),
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.grey[100],
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.grey[100],
                  label: "",
                  icon: Icon(
                    Icons.home,
                    color: son == 0 ? Colors.orange[800] : Colors.grey,
                    size: son == 0 ? 35 : 30,
                  ),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.grey[100],
                  label: "",
                  icon: Icon(
                    son == 1 ? Icons.favorite : Icons.favorite_outline,
                    color: son == 1 ? Colors.orange[800] : Colors.grey,
                    size: son == 1 ? 35 : 30,
                  ),
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.grey[100],
                    label: "",
                    icon: Icon(
                      son == 2 ? Icons.person : Icons.person_outline,
                      color: son == 2 ? Colors.orange[800] : Colors.grey,
                      size: son == 2 ? 35 : 30,
                    )),
                BottomNavigationBarItem(
                  backgroundColor: Colors.grey[100],
                  icon: Icon(
                    Icons.history_sharp,
                    color: son == 3 ? Colors.orange[800] : Colors.grey,
                    size: son == 3 ? 35 : 30,
                  ),
                  label: "",
                ),
              ],
              currentIndex: son,
              onTap: _element,
            ),
          );
        });
  }
}
