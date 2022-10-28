import 'dart:io';

import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_floating_action_button.dart';
import 'package:good_house/widgets/common_form_item.dart';
import 'package:good_house/widgets/common_image_picker.dart';
import 'package:good_house/widgets/common_picker.dart';
import 'package:good_house/widgets/common_radio_form_item.dart';
import 'package:good_house/widgets/common_select_form_item.dart';
import 'package:good_house/widgets/common_title.dart';
import 'package:good_house/widgets/room_appliance.dart';

class RoomAddPage extends StatefulWidget {
  const RoomAddPage({Key? key}) : super(key: key);

  @override
  State<RoomAddPage> createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int lease = 0;
  int furnish = 0;
  int roomType = 0;
  int floor = 0;
  int oriented = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("房源发布"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const CommonTitle(title: "房源信息",),
            CommonFormItem(
              label: "小区",
              contentBuilder: (context) {
                return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => Navigator.of(context).pushNamed("/community_selected"),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("请选择小区"),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    )
                );
              },
            ),
            const CommonFormItem(
              label: "租金",
              hintText: "请输入租金",
              suffixText: "元/月",
            ),
            const CommonFormItem(
              label: "大小",
              hintText: "请输入房屋大小",
              suffixText: "平方米",
            ),
            CommonSelectFormItem(
              label: '户型',
              value: roomType,
              onChanged: (val) {
                setState(() {
                  roomType = val;
                });
              },
              options: const ['一室', '二室', '三室', '四室'],
            ),
            CommonSelectFormItem(
              label: '楼层',
              value: floor,
              onChanged: (val) {
                setState(() {
                  floor = val;
                });
              },
              options: const ['高楼层', '中楼层', '低楼层'],
            ),
            CommonSelectFormItem(
              label: '朝向',
              value: oriented,
              onChanged: (val) {
                setState(() {
                  oriented = val;
                });
              },
              options: const ['东', '南', '西', '北'],
            ),
            CommonRadioFormItem(
              label: '租赁方式',
              options: const ['合租', '整租'],
              value: lease,
              onChanged: (index) {
                setState(() => lease = index);
              },
            ),
            CommonRadioFormItem(
              label: '装修',
              options: const ['精装', '简装'],
              value: furnish,
              onChanged: (index) => setState(() => furnish = index)
            ),
            const CommonTitle(title: "房屋图像",),
            CommonImagePicker(
              onChanged: (List<File> files) {
              },
            ),
            const CommonTitle(title: "房屋标题",),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "请输入标题（如：整租，小区，复式）"

                ),
              ),
            ),
            const CommonTitle(title: "房屋配置",),
            RoomAppliance(onChanged: (List<RoomApplianceItem> value) {  },),
            const CommonTitle(title: "房屋描述",),
            Container(
              padding: const EdgeInsets.only(bottom: 50),
              child: const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: "请输入房屋描述信息",
                    // border: InputBorder.none
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButton(
        onTap: () {  },
        title: "提交",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
