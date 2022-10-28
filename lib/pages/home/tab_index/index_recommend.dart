import 'package:flutter/material.dart';
import 'index_recommend_data.dart';
import 'index_recommend_item.dart';

class IndexRecommend extends StatefulWidget {
  final List<IndexRecommendItem> dataList;
  const IndexRecommend({Key? key, this.dataList = indexRecommendData}) : super(key: key);

  @override
  State<IndexRecommend> createState() => _IndexRecommendState();
}

class _IndexRecommendState extends State<IndexRecommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("房屋推荐", style: TextStyle(fontWeight: FontWeight.w600),),
                TextButton(onPressed: (){}, child: const Text('更多',style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),))
              ],
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: indexRecommendData.map((item) => IndexRecommendItemWidget(
              data: item,
              width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
              height: 100,
            )).toList(),
          ),
          const SizedBox(width: 1, height: 10,)
        ],
      ),
    );
  }
}
