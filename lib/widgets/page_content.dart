import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final String name;
  final Widget body;
  const PageContent({Key? key, required this.name, required this.body,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("当前页面：$name"),
        centerTitle: true,
      ),
      body: body
    );
  }
}
