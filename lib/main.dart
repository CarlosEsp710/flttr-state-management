import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:state_management/pages/page1.dart';
import 'package:state_management/pages/page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management',
      initialRoute: 'page1',
      getPages: [
        GetPage(name: '/page1', page: () => const Page1()),
        GetPage(name: '/page2', page: () => const Page2()),
      ],
    );
  }
}
