import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_search/data.dart';
import 'package:good_house/pages/home/tab_search/room_list_item_widget.dart';
import 'package:good_house/widgets/common_floating_action_button.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CommonFloatingActionButton(
            title: "发布房源",
            onTap: () =>Navigator.of(context).pushNamed("/room_add"),
          ),
          appBar: AppBar(
            title: const Text("房屋管理"),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Text("空置"),
                Text("已租"),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: TabBarView(
              children: [
                ListView(
                  children: dataList
                      .map((item) => Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration:
                    const BoxDecoration(color: Colors.white70),
                    child: RoomListItemWidget(data: item),
                  )).toList(),
                ),
                const Text("暂无")
              ],
            ),
          )
        )
    );
  }
}
