import 'package:flutter/material.dart';
import 'package:good_house/pages/home/tab_my/function_button_widget.dart';
import 'function_button_data.dart';
class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 1,
      runSpacing: 1,
      children: list.map((item) => SizedBox(
        width: MediaQuery.of(context).size.width / 3.02,
        child: FunctionButtonWidget(data: item,),
      )).toList(),
    );
  }
}
