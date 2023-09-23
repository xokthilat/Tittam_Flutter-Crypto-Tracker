class Coin {
  late final String id;
  late final String symbol;
  late final String name;
  late final String image;
  late final num currentPrice;
  late final int marketCap;
  late final int marketCapRank;
  late final int? fullyDilutedValuation;
  late final num totalVolume;
  late final num high24H;
  late final num low24H;
  late final double priceChange24H;
  late final double priceChangePercentage24H;
  late final double marketCapChange24H;
  late final double marketCapChangePercentage24H;
  late final num circulatingSupply;
  late final num? totalSupply;
  late final num? maxSupply;
  late final num ath;
  late final double athChangePercentage;
  late final DateTime athDate;
  late final double atl;
  late final double atlChangePercentage;
  late final DateTime atlDate;
  late final DateTime lastUpdated;
  final bool isSelected = false;

  Coin copyWith({
    String? id,
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
    bool? isSelected,
  }) {
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
