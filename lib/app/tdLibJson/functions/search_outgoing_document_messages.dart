part of '../tdlibjson_api.dart';

class SearchOutgoingDocumentMessages extends TdFunction {

  /// Searches for outgoing messages with content of the type messageDocument in all chats except secret chats. Returns the results in reverse chronological order
  const SearchOutgoingDocumentMessages({
    required this.query,
    required this.limit,
  });
  
  /// [query] Query to search for in document file name and message caption
  final String query;

  /// [limit] The maximum number of messages to be returned; up to 100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "query":"$query",
   "limit":$limit
}
	""";
  }
  
  SearchOutgoingDocumentMessages copyWith({
    String? query,
    int? limit,
  }) => SearchOutgoingDocumentMessages(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchOutgoingDocumentMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
