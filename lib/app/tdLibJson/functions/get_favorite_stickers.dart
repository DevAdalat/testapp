part of '../tdlibjson_api.dart';

class GetFavoriteStickers extends TdFunction {

  /// Returns favorite stickers
  const GetFavoriteStickers();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetFavoriteStickers copyWith() => const GetFavoriteStickers();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getFavoriteStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
