part of '../tdlibjson_api.dart';

class SearchSecretMessages extends TdFunction {

  /// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance, the number of returned messages is chosen by TDLib
  const SearchSecretMessages({
    required this.chatId,
    required this.query,
    required this.offset,
    required this.limit,
    this.filter,
  });
  
  /// [chatId] Identifier of the chat in which to search. Specify 0 to search in all secret chats
  final int chatId;

  /// [query] Query to search for. If empty, searchChatMessages must be used instead
  final String query;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// [filter] Additional filter for messages to search; pass null to search for all messages
  final SearchMessagesFilter? filter;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "query":"$query",
   "offset":"$offset",
   "limit":$limit,
   "filter":${filter?.toJson()}
}
	""";
  }
  
  SearchSecretMessages copyWith({
    int? chatId,
    String? query,
    String? offset,
    int? limit,
    SearchMessagesFilter? filter,
  }) => SearchSecretMessages(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
    filter: filter ?? this.filter,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchSecretMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
