import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_bloc.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_event.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
          create: (context) =>
              sl<CoinlistBloc>()..add(const CoinListFetchCoinList()),
          child: const ConlistPage()),
    );
  }
}
