import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置")
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 90,
            child: ElevatedButton(
              onPressed: () {
                CommonToast.showToast("已经退出登录");
                // Navigator.of(context).pop();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                )
              ),
              child: const Text("退出登录", style: TextStyle(fontSize: 16),),
            ),
          )
        ],
      ),
    );
  }
}
