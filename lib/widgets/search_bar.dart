import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_image.dart';

class SearchBar extends StatefulWidget {
  final bool isShowLocation; // 是否显示定位
  final bool isShowBack; // 是否显示返回
  final String defaultInputValue; // 默认输入值
  final Function onSearch; // 点击输入框时触发
  final ValueChanged<String> onSearchSubmit; // 用户键入后点击键盘搜索触发
  const SearchBar({Key? key, this.isShowLocation = false, this.isShowBack = false, required this.defaultInputValue, required this.onSearch, required this.onSearchSubmit}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.isShowLocation) GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: const [
                  Icon(Icons.room, color: Colors.teal,size: 22,),
                  Text("北京", style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black87, fontSize: 16), )
                ],
              ),
            )
        ),
        if (widget.isShowBack) IconButton(
            onPressed: (){},
            icon: const Icon(Icons.chevron_left)
        ),
        Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2),
                    hintText: "请输入搜索词",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, size: 22,),
                    suffixIcon: Icon(Icons.close, size: 22,)
                ),
              ),
            )
        ),
        if (widget.isShowBack) TextButton(
          onPressed: (){},
          child: const Text("取消", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
        ),
        if (widget.isShowLocation) const CommonImage(src: "static/images/home_index_navigator_map.png", width: 50, height: 50, fit: BoxFit.fill)
      ],
    );
  }
}
