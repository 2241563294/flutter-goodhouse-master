import 'package:flutter/material.dart';
import 'package:good_house/pages/home/info/data.dart';
import 'package:good_house/pages/home/info/item_widget.dart';

class Info extends StatefulWidget {
  final bool showTitle;
  final List<InfoItem> dataList;
  const Info({Key? key, required this.dataList, required this.showTitle}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.showTitle) const Text("最新资讯", style: TextStyle(fontWeight: FontWeight.w600),),
          Column(
            children: widget.dataList.map((item) => Container(
              height: 120,
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(color: Colors.white),
              child: ItemWidget(data: item,),
            )).toList(),
          )
        ],
      )
    );
  }
}
