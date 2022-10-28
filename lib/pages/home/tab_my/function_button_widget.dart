import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_my/function_button_data.dart';
import 'package:good_house/widgets/common_image.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;

  const FunctionButtonWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (data.onTapHandle != null) data.onTapHandle!(context);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            CommonImage(
                src: data.imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.fill
            ),
            const SizedBox(width: 2,height: 5,),
            Text(data.title)
          ],
        ),
      ),
    );
  }
}
