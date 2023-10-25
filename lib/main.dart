import 'package:ecom_app_ddbahinicreation/views/spash_screen/spash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Currently we are using GetX..so we have to change this material app to GetMaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              // to set appbar icons color
              color: Colors.transparent,
              iconTheme: IconThemeData(color: darkFontGrey)),
          fontFamily: regular),
      home: const SplashScreen(),
    );
  }
}
