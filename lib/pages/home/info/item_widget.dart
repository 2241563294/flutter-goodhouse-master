import 'package:flutter/material.dart';
import 'package:good_house/pages/home/info/data.dart';
import 'package:good_house/widgets/common_image.dart';

const textStyle = TextStyle(color: Colors.black54,fontSize: 13);

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonImage(src: data.imageUrl, width: 150, height: 120, fit: BoxFit.fill,),
        const SizedBox(width: 10,height: 1,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.title, style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.black87),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(data.source, style: textStyle,),
                    Text(data.time, style: textStyle,)
                  ],
                )
              ],
            ),
          )
        )
      ],
    );
  }
}
