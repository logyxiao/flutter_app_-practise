import 'package:flutter/material.dart';
import 'package:maize_app/pages/navpages/bar_item_page.dart';
import 'package:maize_app/pages/home_page.dart';
import 'package:maize_app/pages/navpages/my_page.dart';
import 'package:maize_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.3),
        unselectedFontSize: 0,
        selectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:'home',icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:'home',icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label:'home',icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:'My',icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
