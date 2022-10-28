import 'package:flutter/material.dart';
import 'package:good_house/config.dart';
import 'package:good_house/widgets/common_check_button.dart';

class RoomApplianceItem {
  final String title;
  final int iconPoint;
  final bool isChecked;

  const RoomApplianceItem(this.title, this.iconPoint, this.isChecked);

  // const RoomApplianceItem(this.title, this.iconPoint, this.isChecked);
}

const List<RoomApplianceItem> _dataList = [
  RoomApplianceItem('衣柜', 0xe918, false),
  RoomApplianceItem('洗衣机', 0xe917, false),
  RoomApplianceItem('空调', 0xe90d, false),
  RoomApplianceItem('天然气', 0xe90f, false),
  RoomApplianceItem('冰箱', 0xe907, false),
  RoomApplianceItem('暖气', 0xe910, false),
  RoomApplianceItem('电视', 0xe908, false),
  RoomApplianceItem('热水器', 0xe912, false),
  RoomApplianceItem('宽带', 0xe90e, false),
  RoomApplianceItem('沙发', 0xe913, false),
];

class RoomAppliance extends StatefulWidget {
  final ValueChanged<List<RoomApplianceItem>> onChanged;
  const RoomAppliance({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<RoomAppliance> createState() => _RoomApplianceState();
}

class _RoomApplianceState extends State<RoomAppliance> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: _dataList.map((item) => GestureDetector(
        onTap: () {
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 5 - 10,
          child: Column(
            children: [
              Icon(
                IconData(item.iconPoint, fontFamily: Config.CommonIcon,),
                size: 40,
              ),
              Text(item.title),
              CommonCheckButton(item.isChecked)
            ],
          ),
        ),
      )).toList(),
    );
  }
}

