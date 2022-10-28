import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String label;
  final Widget Function(BuildContext context)? contentBuilder;
  final Widget? suffix;
  final String? suffixText;

  final String? hintText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;
  const CommonFormItem({Key? key, required this.label, this.contentBuilder, this.suffix, this.suffixText,  this.hintText, this.onChanged, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black12
          )
        )
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: const TextStyle(
              color: Colors.black87,
              fontSize: 16
            ),),
          ),
          Expanded(
            child: contentBuilder != null ? contentBuilder!(context) :
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none
              ),
            ),
          ),
          if (suffix !=null) suffix ?? const SizedBox(),
          if (suffix == null && suffixText != null) Text(suffixText!)
        ],
      ),
    );
  }
}
