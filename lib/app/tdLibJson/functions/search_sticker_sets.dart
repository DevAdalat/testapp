part of '../tdlibjson_api.dart';

class SearchStickerSets extends TdFunction {

  /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
  const SearchStickerSets({
    required this.query,
  });
  
  /// [query] Query to search for
  final String query;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "query":"$query"
}
	""";
  }
  
  SearchStickerSets copyWith({
    String? query,
  }) => SearchStickerSets(
    query: query ?? this.query,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
