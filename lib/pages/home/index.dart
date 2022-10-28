import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_index/index.dart';
import 'package:good_house/pages/home/tab_info/index.dart';
import 'package:good_house/pages/home/tab_my/tab_my.dart';
import 'package:good_house/pages/home/tab_search/tab_search.dart';

List<Widget> tabViewList = const [TabIndexPage(), TabSearch(), TabInfoPage(), TabMy()];
List<BottomNavigationBarItem> barItemList = const [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: "搜索"),
  BottomNavigationBarItem(icon: Icon(Icons.info), label: "资讯"),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "我的"),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTaped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black45,
        onTap: _onItemTaped,
      ),
    );
  }
}


