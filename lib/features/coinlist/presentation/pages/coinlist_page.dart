import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_bloc.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_event.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_state.dart';
import '../../../../service_locator.dart';

class ConlistPage extends StatelessWidget {
  const ConlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("ຫຼຽນ", style: TextStyle(fontSize: 20)),
                  Text("ລາຄາປະຈຸບັນ", style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => sl<CoinlistBloc>()
                  ..add(const CoinlistEvent.fetchCoinList()),
                child: BlocBuilder<CoinlistBloc, CoinlistState>(
                  builder: (context, state) {
                    return state.when(
                        content: (List<Coin> listCoin) {
                          var currencyFormat =
                              NumberFormat("###,###.0#", "en_US");

                          return ListView.builder(
                              itemCount: listCoin.length,
                              itemBuilder: (ctx, index) {
                                Coin coin = listCoin[index];
                                return Neumorphic(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 6),
                                  style: NeumorphicStyle(
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Image.network(coin.image),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(coin.name),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text((currencyFormat.format(
                                                      (coin.currentPrice *
                                                              10600)
                                                          .round()))
                                                  .toString() +
                                              " ກີບ"),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        error: (error) {
                          return Text(error.toString());
                        },
                        loading: () => const CircularProgressIndicator());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
