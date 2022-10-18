part of '../tdlibjson_api.dart';

class SearchChatsOnServer extends TdFunction {

  /// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list
  const SearchChatsOnServer({
    required this.query,
    required this.limit,
  });
  
  /// [query] Query to search for 
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
  
  SearchChatsOnServer copyWith({
    String? query,
    int? limit,
  }) => SearchChatsOnServer(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchChatsOnServer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
