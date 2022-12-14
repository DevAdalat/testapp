part of '../tdlibjson_api.dart';

class GetTopChats extends TdFunction {

  /// Returns a list of frequently used chats. Supported only if the chat info database is enabled
  const GetTopChats({
    required this.category,
    required this.limit,
  });
  
  /// [category] Category of chats to be returned 
  final TopChatCategory category;

  /// [limit] The maximum number of chats to be returned; up to 30
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "category":${category.toJson()},
   "limit":$limit
}
	""";
  }
  
  GetTopChats copyWith({
    TopChatCategory? category,
    int? limit,
  }) => GetTopChats(
    category: category ?? this.category,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getTopChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
