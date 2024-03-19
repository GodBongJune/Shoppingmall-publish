import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/core/constant/color.dart';
import 'package:shoppingmall/ui/pages/category_page/category_page.dart';
import 'package:shoppingmall/ui/pages/home_page/home_page.dart';
import 'package:shoppingmall/ui/pages/like_list_page/like_list_page.dart';
import 'package:shoppingmall/ui/pages/profile_page/profile_page.dart';
import 'package:shoppingmall/ui/pages/search_page/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 2;

  void _onNavigateToPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: IndexedStack(
          index: _selectedPage,
          children: [
            CategoryPage(),
            SearchPage(),
            HomePage(),
            LikeListPage(),
            ProfilePage(
              onNavigateToPage: _onNavigateToPage,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          selectedItemColor: Colors.black,
          unselectedItemColor: kFontColor2,
          onTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
                label: "카테고리", icon: Icon(CupertinoIcons.bars)),
            const BottomNavigationBarItem(
                label: "검색", icon: Icon(CupertinoIcons.search)),
            const BottomNavigationBarItem(
                label: "홈", icon: Icon(CupertinoIcons.home)),
            const BottomNavigationBarItem(
                label: "찜", icon: Icon(CupertinoIcons.heart)),
            const BottomNavigationBarItem(
                label: "마이페이지", icon: Icon(CupertinoIcons.person)),
          ],
          unselectedLabelStyle: TextStyle(fontSize: 10),
          selectedLabelStyle: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
