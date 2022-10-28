

import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_index/index_recommend_data.dart';

import '../../../widgets/common_image.dart';

var textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

class IndexRecommendItemWidget extends StatefulWidget {
  final IndexRecommendItem data;
  final double width;
  final double height;
  const IndexRecommendItemWidget({Key? key, required this.data, required this.width, required this.height}) : super(key: key);

  @override
  State<IndexRecommendItemWidget> createState() => _IndexRecommendItemWidgetState();
}

class _IndexRecommendItemWidgetState extends State<IndexRecommendItemWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      width: widget.width,
      height: widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.data.title, style: textStyle,),
              Text(widget.data.subTitle, style: textStyle,),
            ],
          ),
          CommonImage(
            src: widget.data.imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
