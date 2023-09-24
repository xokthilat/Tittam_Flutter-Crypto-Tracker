import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/features/coinlist/data/models/coin_model.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_bloc.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_event.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_state.dart';
import 'package:tittam/features/coinlist/presentation/pages/coinlist_page.dart';
import 'package:integration_test/integration_test.dart';

class MockCoinlistBloc extends MockBloc<CoinlistEvent, CoinlistState>
    implements CoinlistBloc {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should show loading when initial state is loading',
      (WidgetTester tester) async {
    // arrange
    final mockCoinListBloc = MockCoinlistBloc();
    when(() => mockCoinListBloc.state).thenReturn(
      const CoinlistState.loading(), // the desired state
    );

    const widget = ConlistPage();
    final messageWidget = find.text("Loading...");

    await tester.pumpWidget(
      BlocProvider<CoinlistBloc>(
        create: (context) => mockCoinListBloc,
        child: const MaterialApp(
          title: 'Widget Test',
          home: widget,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(messageWidget, findsOneWidget);
  });
  testWidgets('should show error when initial state is error',
      (WidgetTester tester) async {
    // arrange
    final mockCoinListBloc = MockCoinlistBloc();
    when(() => mockCoinListBloc.state).thenReturn(
      const CoinlistState.error(
          NetworkError.connectivity(message: "error")), // the desired state
    );

    const widget = ConlistPage();
    final messageWidget = find.text("error");

    await tester.pumpWidget(
      BlocProvider<CoinlistBloc>(
        create: (context) => mockCoinListBloc,
        child: const MaterialApp(
          title: 'Widget Test',
          home: widget,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(messageWidget, findsOneWidget);
  });
  testWidgets('should show error when initial state is connectivity error',
      (WidgetTester tester) async {
    // arrange
    final mockCoinListBloc = MockCoinlistBloc();
    when(() => mockCoinListBloc.state).thenReturn(
      const CoinlistState.error(
          NetworkError.connectivity(message: "error")), // the desired state
    );

    const widget = ConlistPage();
    final messageWidget = find.text("error");

    await tester.pumpWidget(
      BlocProvider<CoinlistBloc>(
        create: (context) => mockCoinListBloc,
        child: const MaterialApp(
          title: 'Widget Test',
          home: widget,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(messageWidget, findsOneWidget);
  });
  testWidgets('should show error when initial state is type error',
      (WidgetTester tester) async {
    // arrange
    final mockCoinListBloc = MockCoinlistBloc();
    when(() => mockCoinListBloc.state).thenReturn(
      const CoinlistState.error(
          NetworkError.type(error: "error")), // the desired state
    );

    const widget = ConlistPage();
    final messageWidget = find.text("error");

    await tester.pumpWidget(
      BlocProvider<CoinlistBloc>(
        create: (context) => mockCoinListBloc,
        child: const MaterialApp(
          title: 'Widget Test',
          home: widget,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(messageWidget, findsOneWidget);
  });
  testWidgets('should show error when initial state is request error',
      (WidgetTester tester) async {
    // arrange
    final mockCoinListBloc = MockCoinlistBloc();
    when(() => mockCoinListBloc.state).thenReturn(
      CoinlistState.error(NetworkError.request(
          error: DioException(
              requestOptions: RequestOptions(),
              message: "error"))), // the desired state
    );

    const widget = ConlistPage();
    final messageWidget = find.text("error");

    await tester.pumpWidget(
      BlocProvider<CoinlistBloc>(
        create: (context) => mockCoinListBloc,
        child: const MaterialApp(
          title: 'Widget Test',
          home: widget,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(messageWidget, findsOneWidget);
  });
  testWidgets('should show content when initial state is content',
      (WidgetTester tester) async {
    // arrange
    final mockJson = [
      {
        "id": "bitcoin",
        "symbol": "BTC",
        "name": "Bitcoin",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png",
        "current_price": 1,
        "market_cap": 900000000000,
        "market_cap_rank": 1,
        "fully_diluted_valuation": null,
        "total_volume": 80000000000,
        "high_24h": 49000.0,
        "low_24h": 47000.0,
        "price_change_24h": 1000.0,
        "price_change_percentage_24h": 1,
        "market_cap_change_24h": 10000000000.0,
        "market_cap_change_percentage_24h": 1.1,
        "circulating_supply": 18750000.0,
        "total_supply": 21000000.0,
        "max_supply": 21000000.0,
        "ath": 65000.0,
        "ath_change_percentage": 35.0,
        "ath_date": "2021-04-14T10:00:00Z",
        "atl": 3000.0,
        "atl_change_percentage": 1500.0,
        "atl_date": "2015-01-14T10:00:00Z",
        "last_updated": "2023-09-23T15:30:00Z"
      },
      {
        "id": "ethereum",
        "symbol": "ETH",
        "name": "Ethereum",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/1200px-Ethereum-icon-purple.svg.png",
        "current_price": 1,
        "market_cap": 400000000000,
        "market_cap_rank": 2,
        "fully_diluted_valuation": null,
        "total_volume": 30000000000,
        "high_24h": 3600.0,
        "low_24h": 3400.0,
        "price_change_24h": 200.0,
        "price_change_percentage_24h": 1,
        "market_cap_change_24h": 8000000000.0,
        "market_cap_change_percentage_24h": 2.0,
        "circulating_supply": 115000000.0,
        "total_supply": null,
        "max_supply": null,
        "ath": 4500.0,
        "ath_change_percentage": 28.0,
        "ath_date": "2021-05-10T08:30:00Z",
        "atl": 1000.0,
        "atl_change_percentage": 250.0,
        "atl_date": "2020-03-13T13:45:00Z",
        "last_updated": "2023-09-23T15:30:00Z"
      },
      {
        "id": "ethereum-classic",
        "symbol": "ETC",
        "name": "Ethereum Classic",
        "image":
            "https://assets.coingecko.com/coins/images/453/large/ethereum-classic-logo.png?1547034169",
        "current_price": 1,
        "market_cap": 9000000000,
        "market_cap_rank": 25,
        "fully_diluted_valuation": null,
        "total_volume": 700000000,
        "high_24h": 75.0,
        "low_24h": 65.0,
        "price_change_24h": -5.0,
        "price_change_percentage_24h": 1,
        "market_cap_change_24h": -1000000000.0,
        "market_cap_change_percentage_24h": -10.0,
        "circulating_supply": 130000000.0,
        "total_supply": 210000000.0,
        "max_supply": null,
        "ath": 200.0,
        "ath_change_percentage": -65.0,
        "ath_date": "2021-02-15T11:15:00Z",
        "atl": 40.0,
        "atl_change_percentage": 75.0,
        "atl_date": "2020-03-18T09:30:00Z",
        "last_updated": "2023-09-23T15:30:00Z"
      }
    ];

    List<Coin> listCoin = mockJson.map((e) => CoinModel().fromJson(e)).toList();
    final mockCoinListBloc = MockCoinlistBloc();
    mockCoinListBloc.selectedCoinId = "";
    when(() => mockCoinListBloc.state).thenReturn(
      CoinlistState.content(listCoin), // the desired state
    );

    const widget = ConlistPage();
    final firstTitle = find.text("Bitcoin");
    final secondTitle = find.text("Ethereum");
    final thirdTitle = find.text("Ethereum Classic");
    await mockNetworkImages(() async => tester.pumpWidget(
          BlocProvider<CoinlistBloc>(
            create: (context) => mockCoinListBloc,
            child: const MaterialApp(
              title: 'Widget Test',
              home: widget,
            ),
          ),
        ));
    await tester.pumpAndSettle();

    expect(firstTitle, findsOneWidget);
    expect(secondTitle, findsOneWidget);
    expect(thirdTitle, findsOneWidget);
  });
}
