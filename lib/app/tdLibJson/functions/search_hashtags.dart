part of '../tdlibjson_api.dart';

class SearchHashtags extends TdFunction {

  /// Searches for recently used hashtags by their prefix
  const SearchHashtags({
    required this.prefix,
    required this.limit,
  });
  
  /// [prefix] Hashtag prefix to search for 
  final String prefix;

  /// [limit] The maximum number of hashtags to be returned
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "prefix":"$prefix",
   "limit":$limit
}
	""";
  }
  
  SearchHashtags copyWith({
    String? prefix,
    int? limit,
  }) => SearchHashtags(
    prefix: prefix ?? this.prefix,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchHashtags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
