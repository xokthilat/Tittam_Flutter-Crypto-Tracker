import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    const _channel = MethodChannel('com.xokthilat.titarm');

    var currencyFormat = NumberFormat("###,###.0#", "en_US");
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
                child: const Text("Stop LiveActivity"),
                onPressed: () async {
                  try {
                    await _channel.invokeMethod('stopLiveActivity', {
                      "price": "",
                      "change": "",
                      "name": "",
                      "isPositivePrice": true,
                    });
                  } on PlatformException catch (e) {
                    debugPrint("==== PlatformException '${e.message}' ====");
                  }
                }),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: BlocProvider(
                create: (context) =>
                    sl<CoinlistBloc>()..add(const CoinListFetchCoinList()),
                child: BlocBuilder<CoinlistBloc, CoinlistState>(
                  builder: (context, state) {
                    return state.when(
                        content: (List<Coin> listCoin) {
                          return ListView.builder(
                              itemCount: listCoin.length,
                              itemBuilder: (ctx, index) {
                                Coin coin = listCoin[index];
                                return InkWell(
                                  onTap: () async {
                                    context
                                        .read<CoinlistBloc>()
                                        .add(SelectCoinToLive(coin));
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
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
                                              child: Text(
                                                  "${currencyFormat.format((coin.currentPrice))} Usd"),
                                            ),
                                          ),
                                          //add green check icon if isSelected
                                          if (context
                                                  .read<CoinlistBloc>()
                                                  .selectedCoinId ==
                                              coin.id)
                                            const Icon(
                                              Icons.check,
                                              color: Colors.green,
                                            )
                                        ],
                                      ),
                                    ),
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
