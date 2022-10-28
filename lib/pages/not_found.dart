import 'package:flutter/material.dart';
import 'package:good_house/widgets/page_content.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '404', body: Center(
      child: Text("你访问的页面不存在", style: TextStyle(
        color: Colors.black54
      ),),
    ));
  }
}
