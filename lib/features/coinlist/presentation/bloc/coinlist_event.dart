import 'package:equatable/equatable.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';

sealed class CoinlistEvent extends Equatable {
  const CoinlistEvent();

  @override
  List<Object> get props => [];
}

final class CoinListFetchCoinList extends CoinlistEvent {
  const CoinListFetchCoinList();
}

final class SelectCoinToLive extends CoinlistEvent {
  final Coin coin;
  const SelectCoinToLive(this.coin);
}
