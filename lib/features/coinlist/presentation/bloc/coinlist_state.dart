import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
part 'coinlist_state.freezed.dart';

@freezed
abstract class CoinlistState with _$CoinlistState {
  const factory CoinlistState.loading() = _CoinListLoading;
  const factory CoinlistState.content(List<Coin> listCoin) = _CoinListContent;
  const factory CoinlistState.error(NetworkError e) = _CoinListError;
}
