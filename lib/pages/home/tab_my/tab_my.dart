import 'package:flutter/material.dart';
import 'package:good_house/pages/home/info/data.dart';
import 'package:good_house/pages/home/info/index.dart';
import 'package:good_house/pages/home/tab_my/advertisement.dart';
import 'package:good_house/pages/home/tab_my/function_button.dart';
import 'package:good_house/pages/home/tab_my/header.dart';

class TabMy extends StatelessWidget {
  const TabMy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("我的"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed("/setting");
            },
            icon: const Icon(Icons.settings)
          )
        ],
      ),
      body: ListView(
        children: const [
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(dataList: infoData, showTitle: true,)
        ],
      ),
    );
  }
}
