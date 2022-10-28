import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonPicker {

  static Future<int?> showPicker({required BuildContext context, required List<String> options, required int value}) {
    var controller = FixedExtentScrollController(initialItem: value);
    return showCupertinoModalPopup<int>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white70,
          height: 300,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(1),
                      child: const Text("取消")
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(controller.selectedItem),
                      child: const Text("确定")
                    )
                  ],
                ),
              ),
              Expanded(
                child: CupertinoPicker(
                  scrollController: controller,
                  itemExtent: 50,
                  onSelectedItemChanged: (value){},
                  children: options.map((item) => Text(item)).toList(),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
