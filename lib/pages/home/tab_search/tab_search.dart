import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_search/data.dart';
import 'package:good_house/pages/home/tab_search/room_list_item_widget.dart';
import 'package:good_house/widgets/search_bar.dart';

class TabSearch extends StatelessWidget {
  const TabSearch({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            Expanded(
              child: ListView(
                children: dataList.map((item) => Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(color: Colors.white70),
                  child: RoomListItemWidget(data: item),
                )).toList(),
              ),
            )
          ],
        ),
      )
    );
  }
}
