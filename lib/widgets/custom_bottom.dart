import 'package:borg_erp/screens/dashbroad_screen.dart';
import 'package:borg_erp/screens/history_screen.dart';
import 'package:borg_erp/screens/main_screen.dart';
import 'package:borg_erp/screens/profile_screen.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatefulWidget {
  const CustomBottom({super.key});

  @override
  State<CustomBottom> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CustomBottom>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.watch_later, color: Color(0XFF19596A), size: 30),
          Icon(Icons.home, color: Color(0XFF19596A), size: 30),
          Icon(Icons.settings, color: Color(0XFF19596A), size: 30),
        ],
        inactiveIcons: const [
          Icon(Icons.watch_later, color: Color(0XFF19596A), size: 30),
          Icon(Icons.home, color: Color(0XFF19596A), size: 30),
          Icon(Icons.settings, color: Color(0XFF19596A), size: 30),
        ],
        color: Colors.white,
        height: 70,
        circleWidth: 70,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Color(0XFF19596A),
        elevation: 10,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [HistoryScreen(), MainScreen(), ProfileScreen()],
      ),
    );
  }
}
