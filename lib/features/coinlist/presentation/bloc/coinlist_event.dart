import 'package:freezed_annotation/freezed_annotation.dart';
part "coinlist_event.freezed.dart";

@freezed
abstract class CoinlistEvent with _$CoinlistEvent {
  const factory CoinlistEvent.fetchCoinList() = _FetchCoinListEvent;
}
