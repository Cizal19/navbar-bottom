import 'package:flutter/material.dart';
import 'package:navbar_bottom/navpages/bar_item_page.dart';
import 'package:navbar_bottom/navpages/home_page.dart';
import 'package:navbar_bottom/navpages/my_page.dart';
import 'package:navbar_bottom/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Navbar Tutorial",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[600],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(label: "", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.bar_chart)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),
          ]),
    );
  }
}
