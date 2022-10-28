import 'package:flutter/material.dart';
import 'package:good_house/pages/home/info/data.dart';
import 'package:good_house/pages/home/info/index.dart';
import 'package:good_house/pages/home/tab_index/index_recommend.dart';
import 'package:good_house/widgets/common_banner.dart';
import 'package:good_house/widgets/search_bar.dart';

import 'index_navigator.dart';


class TabIndexPage extends StatefulWidget {
  const TabIndexPage({Key? key}) : super(key: key);

  @override
  State<TabIndexPage> createState() => _TabIndexPageState();
}

class _TabIndexPageState extends State<TabIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SearchBar(
          defaultInputValue: '',
          onSearchSubmit: (String value) {  },
          onSearch: (){},
          isShowLocation: true,
        ),
      ),
      body: ListView(
        children: const [
          CommonBanner(),
          IndexNavigator(),
          IndexRecommend(),
          Info(dataList: infoData, showTitle: true,)
        ],
      ),
    );
  }
}
