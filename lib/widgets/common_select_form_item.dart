
import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_picker.dart';

import 'common_form_item.dart';

class CommonSelectFormItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged onChanged;
  const CommonSelectFormItem({Key? key, required this.label, required this.options, required this.value, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contentBuilder: (context) {
        return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              var res = CommonPicker.showPicker(context: context, options: options, value: value);
              res.then((value) => onChanged(value));
            },
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(options[value]),
                  const Icon(Icons.keyboard_arrow_right)
                ],
              ),
            )
        );
      },
    );
  }
}
