import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:good_house/pages/home/index.dart';
import 'package:good_house/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fluroRouter = FluroRouter();
    Routes.configureRoutes(fluroRouter);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.teal)
      ), // 主题颜色
      home: const HomePage(),
      onGenerateRoute: fluroRouter.generator,
    );
  }
}
