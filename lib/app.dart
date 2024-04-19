import 'package:flutter/material.dart';
import 'package:fruits_shop/provider/provider.dart';
import 'package:fruits_shop/router/router.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FruitProvider(),
      child: MaterialApp(
        initialRoute: AppRoutes.initalRoute,
        routes: AppRouter.routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
