// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinModel _$CoinModelFromJson(Map<String, dynamic> json) => CoinModel()
  ..id = json['id'] as String
  ..symbol = json['symbol'] as String
  ..name = json['name'] as String
  ..image = json['image'] as String
  ..currentPrice = json['current_price'] as num
  ..marketCap = json['market_cap'] as int
  ..marketCapRank = json['market_cap_rank'] as int
  ..fullyDilutedValuation = json['fully_diluted_valuation'] as int?
  ..totalVolume = json['total_volume'] as num
  ..high24H = json['high_24h'] as num
  ..low24H = json['low_24h'] as num
  ..priceChange24H = (json['price_change_24h'] as num).toDouble()
  ..priceChangePercentage24H =
      (json['price_change_percentage_24h'] as num).toDouble()
  ..marketCapChange24H = (json['market_cap_change_24h'] as num).toDouble()
  ..marketCapChangePercentage24H =
      (json['market_cap_change_percentage_24h'] as num).toDouble()
  ..circulatingSupply = json['circulating_supply'] as num
  ..totalSupply = json['total_supply'] as num?
  ..maxSupply = json['max_supply'] as num?
  ..ath = json['ath'] as num
  ..athChangePercentage = (json['ath_change_percentage'] as num).toDouble()
  ..athDate = DateTime.parse(json['ath_date'] as String)
  ..atl = (json['atl'] as num).toDouble()
  ..atlChangePercentage = (json['atl_change_percentage'] as num).toDouble()
  ..atlDate = DateTime.parse(json['atl_date'] as String)
  ..lastUpdated = DateTime.parse(json['last_updated'] as String);

