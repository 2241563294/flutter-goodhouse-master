import 'package:flutter/material.dart';
import '../../../widgets/common_image.dart';
import 'index_navigator_data.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItems
            .map((item) => InkWell(
          onTap: (){
            item.onTap(context);
          },
          child: Column(
            children: [
              CommonImage(
                src:  item.imageUri,
                width: 47.5,
                height: 47.5,
                fit: BoxFit.fill,
              ),
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        )).toList()
        ,
      ),
    );
  }
}
