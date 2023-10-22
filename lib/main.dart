import 'package:ecom_app_ddbahinicreation/views/spash_screen/spash_screen.dart';
import 'package:flutter/material.dart';

import 'constts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(color: Colors.transparent),
          fontFamily: regular),
          home: const SplashScreen(),
    );
  }
}
