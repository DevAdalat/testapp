part of '../tdlibjson_api.dart';

class GetPremiumStickers extends TdFunction {

  /// Returns premium stickers from regular sticker sets
  const GetPremiumStickers({
    required this.limit,
  });
  
  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "limit": "$limit"
  }
	""";
  }
  
  GetPremiumStickers copyWith({
    int? limit,
  }) => GetPremiumStickers(
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
