import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:tittam/core/interface/models/base_network_model.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';

part 'coin_model.g.dart';

@JsonSerializable()
class CoinModel extends BaseNetworkModel<CoinModel>
    with EquatableMixin
    implements Coin {
  @override
  late final String id;
  @override
  late final String symbol;
  @override
  late final String name;
  @override
  late final String image;

  @JsonKey(name: 'current_price')
  @override
  late final num currentPrice;

  @JsonKey(name: 'market_cap')
  @override
  late final int marketCap;

  @JsonKey(name: 'market_cap_rank')
  @override
  late final int marketCapRank;

  @JsonKey(name: 'fully_diluted_valuation')
  @override
  late final int? fullyDilutedValuation;

  @JsonKey(name: 'total_volume')
  @override
  late final num totalVolume;

  @JsonKey(name: 'high_24h')
  @override
  late final num high24H;

  @JsonKey(name: 'low_24h')
  @override
  late final num low24H;

  @JsonKey(name: 'price_change_24h')
  @override
  late final double priceChange24H;

  @JsonKey(name: 'price_change_percentage_24h')
  @override
  late final double priceChangePercentage24H;

  @JsonKey(name: 'market_cap_change_24h')
  @override
  late final double marketCapChange24H;

  @JsonKey(name: 'market_cap_change_percentage_24h')
  @override
  late final double marketCapChangePercentage24H;

  @JsonKey(name: 'circulating_supply')
  @override
  late final num circulatingSupply;

  @JsonKey(name: 'total_supply')
  @override
  late final num? totalSupply;

  @JsonKey(name: 'max_supply')
  @override
  late final num? maxSupply;

  @override
  late final num ath;

  @JsonKey(name: 'ath_change_percentage')
  @override
  late final double athChangePercentage;

  @JsonKey(name: 'ath_date')
  @override
  late final DateTime athDate;

  @override
  late final double atl;

  @JsonKey(name: 'atl_change_percentage')
  @override
  late final double atlChangePercentage;

  @JsonKey(name: 'atl_date')
  @override
  late final DateTime atlDate;

  @JsonKey(name: 'last_updated')
  @override
  late final DateTime lastUpdated;

  @override
  final bool isSelected = false;

  @override
  CoinModel fromJson(Map<String, dynamic> json) {
    return _$CoinModelFromJson(json);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        symbol,
        name,
        image,
        currentPrice,
        marketCap,
        marketCapRank,
        fullyDilutedValuation,
        totalVolume,
        high24H,
        low24H,
        priceChange24H,
        priceChangePercentage24H,
        marketCapChange24H,
        marketCapChangePercentage24H,
        circulatingSupply,
        totalSupply,
        maxSupply,
        ath,
        athChangePercentage,
        athDate,
        atl,
        atlChangePercentage,
        atlDate,
        lastUpdated,
      ];

  @override
  bool? get stringify => true;

  @override
  Coin copyWith(
      {String? id,
      String? symbol,
      String? name,
      String? image,
      num? currentPrice,
      int? marketCap,
      int? marketCapRank,
      int? fullyDilutedValuation,
      num? totalVolume,
      num? high24H,
      num? low24H,
      double? priceChange24H,
      double? priceChangePercentage24H,
      double? marketCapChange24H,
      double? marketCapChangePercentage24H,
      num? circulatingSupply,
      num? totalSupply,
      num? maxSupply,
      num? ath,
      double? athChangePercentage,
      DateTime? athDate,
      double? atl,
      double? atlChangePercentage,
      DateTime? atlDate,
      DateTime? lastUpdated,
      bool? isSelected}) {
    return Coin()
      ..id = id ?? this.id
      ..ath = ath ?? this.ath
      ..atl = atl ?? this.atl
      ..atlChangePercentage = atlChangePercentage ?? this.atlChangePercentage
      ..atlDate = atlDate ?? this.atlDate
      ..athChangePercentage = athChangePercentage ?? this.athChangePercentage
      ..athDate = athDate ?? this.athDate
      ..maxSupply = maxSupply ?? this.maxSupply
      ..totalSupply = totalSupply ?? this.totalSupply
      ..circulatingSupply = circulatingSupply ?? this.circulatingSupply
      ..marketCapChangePercentage24H =
          marketCapChangePercentage24H ?? this.marketCapChangePercentage24H
      ..marketCapChange24H = marketCapChange24H ?? this.marketCapChange24H
      ..priceChangePercentage24H =
          priceChangePercentage24H ?? this.priceChangePercentage24H
      ..priceChange24H = priceChange24H ?? this.priceChange24H
      ..low24H = low24H ?? this.low24H
      ..high24H = high24H ?? this.high24H
      ..totalVolume = totalVolume ?? this.totalVolume
      ..fullyDilutedValuation =
          fullyDilutedValuation ?? this.fullyDilutedValuation
      ..marketCapRank = marketCapRank ?? this.marketCapRank
      ..marketCap = marketCap ?? this.marketCap
      ..currentPrice = currentPrice ?? this.currentPrice
      ..image = image ?? this.image
      ..name = name ?? this.name
      ..symbol = symbol ?? this.symbol;
  }
}
