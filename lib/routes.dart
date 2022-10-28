import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:good_house/pages/home/index.dart';
import 'package:good_house/pages/login.dart';
import 'package:good_house/pages/not_found.dart';
import 'package:good_house/pages/register.dart';
import 'package:good_house/pages/room_add/room_add.dart';
import 'package:good_house/pages/room_detail/index.dart';
import 'package:good_house/pages/room_manage/room_manage.dart';
import 'package:good_house/pages/setting.dart';

class Routes {
  // 1.定义路由列表
  static List<Map<String, dynamic>> routeList = [
    {
      "path": "/", // 2.定义路由处理函数
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const HomePage();
      })
    }, {
      "path": '/login',
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const LoginPage();
      })
    }, {
      "path": '/room_detail/:roomId',
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return RoomDetailPage(roomId: params['roomId'][0]);
      })
    },{
      "path": '/register',
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const RegisterPage();
      })
    },{
      "path": '/setting',
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const SettingPage();
      })
    },{
      "path": '/room_manage',
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const RoomManagePage();
      })
    },{
      "path": '/room_add',
      "handler": Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const RoomAddPage();
      })
    },
  ];
  static final Handler _notFound = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const NotFoundPage();
  });
  // 3.定义路由名称和函数关联的函数
  static void configureRoutes(FluroRouter router) {
    for (final route in routeList) {
      router.define(route["path"], handler: route["handler"]);
    }
    router.notFoundHandler = _notFound;
  }
}