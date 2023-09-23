import 'package:flutter/material.dart';
import 'package:tittam/service_locator.dart';

import 'features/coinlist/presentation/pages/coinlist_page.dart';

Future<void> main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ConlistPage(),
    );
  }
}
