import 'package:flutter/material.dart';

import 'package:state_management/pages/page1.dart';
import 'package:state_management/pages/page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management',
      initialRoute: 'page1',
      routes: {
        'page1': (_) => const Page1(),
        'page2': (_) => const Page2(),
      },
    );
  }
}
