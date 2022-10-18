part of '../tdlibjson_api.dart';

class SearchChats extends TdFunction {

  /// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list
  const SearchChats({
    required this.query,
    required this.limit,
  });
  
  /// [query] Query to search for. If the query is empty, returns up to 50 recently found chats 
  final String query;

  /// [limit] The maximum number of chats to be returned
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "query": "$query",
    "limit": "$limit"
  }
	""";
  }
  
  SearchChats copyWith({
    String? query,
    int? limit,
  }) => SearchChats(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
