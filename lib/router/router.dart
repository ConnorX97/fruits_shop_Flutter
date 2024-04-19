import 'package:flutter/material.dart';
import 'package:fruits_shop/views/homeView.dart';
import 'package:fruits_shop/views/infoView.dart';

abstract final class AppRoutes {
  static const home = '/';
  static const info = '/info';

  static var initalRoute;
}

abstract final class AppRouter {
  static String get initialRoute => AppRoutes.home;
  static Map<String, WidgetBuilder> get routes => {
    AppRoutes.home:(context) => const HomeView(),
    AppRoutes.info:(context) => const ProductDetailView()
  };
}
