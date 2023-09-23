import 'package:equatable/equatable.dart';


sealed class CoinlistEvent extends Equatable {
  const CoinlistEvent();

  @override
  List<Object> get props => [];
}
final class CoinListFetchCoinList extends CoinlistEvent {
  const CoinListFetchCoinList();
}