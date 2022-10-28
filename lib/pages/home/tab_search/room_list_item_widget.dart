import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_search/data.dart';
import 'package:good_house/widgets/common_image.dart';
import 'package:good_house/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;
  const RoomListItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonImage(src: data.imageUrl, width: 150, height: 100, fit: BoxFit.fill),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600),),
              Text(data.title, style: const TextStyle(fontSize: 13,color: Colors.black87),),
              Wrap(
                children: data.tags.map((item) => CommonTag(item)).toList(),
              ),
              Text("${data.price}元/月", style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.orange),)
            ],
          ),
        )
      ],
    );
  }
}
