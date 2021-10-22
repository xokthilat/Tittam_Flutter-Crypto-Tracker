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

Map<String, dynamic> _$CoinModelToJson(CoinModel instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'fully_diluted_valuation': instance.fullyDilutedValuation,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high24H,
      'low_24h': instance.low24H,
      'price_change_24h': instance.priceChange24H,
      'price_change_percentage_24h': instance.priceChangePercentage24H,
      'market_cap_change_24h': instance.marketCapChange24H,
      'market_cap_change_percentage_24h': instance.marketCapChangePercentage24H,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
      'ath': instance.ath,
      'ath_change_percentage': instance.athChangePercentage,
      'ath_date': instance.athDate.toIso8601String(),
      'atl': instance.atl,
      'atl_change_percentage': instance.atlChangePercentage,
      'atl_date': instance.atlDate.toIso8601String(),
      'last_updated': instance.lastUpdated.toIso8601String(),
    };
