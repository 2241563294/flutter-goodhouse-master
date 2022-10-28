
import 'package:flutter/material.dart';
import 'package:good_house/pages/home/info/index.dart';
import 'package:good_house/pages/home/info/data.dart';
import 'package:good_house/widgets/search_bar.dart';

class TabInfoPage extends StatefulWidget {
  const TabInfoPage({Key? key}) : super(key: key);

  @override
  State<TabInfoPage> createState() => _TabInfoPageState();
}

class _TabInfoPageState extends State<TabInfoPage> {
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
          Info(dataList: infoData, showTitle: false)
        ],
      ),
    );
  }
}
