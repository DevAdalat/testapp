part of '../tdlibjson_api.dart';

class SearchStickers extends TdFunction {

  /// Searches for stickers from public sticker sets that correspond to a given emoji
  const SearchStickers({
    required this.emoji,
    required this.limit,
  });
  
  /// [emoji] String representation of emoji; must be non-empty 
  final String emoji;

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "emoji":"$emoji",
   "limit":$limit
}
	""";
  }
  
  SearchStickers copyWith({
    String? emoji,
    int? limit,
  }) => SearchStickers(
    emoji: emoji ?? this.emoji,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
