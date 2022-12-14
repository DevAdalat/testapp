part of '../tdlibjson_api.dart';

class ReorderChatFilters extends TdFunction {

  /// Changes the order of chat filters
  const ReorderChatFilters({
    required this.chatFilterIds,
    required this.mainChatListPosition,
  });
  
  /// [chatFilterIds] Identifiers of chat filters in the new correct order 
  final List<int> chatFilterIds;

  /// [mainChatListPosition] Position of the main chat list among chat filters, 0-based. Can be non-zero only for Premium users
  final int mainChatListPosition;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_filter_ids":${chatFilterIds.map((i) => i).toList()},
   "main_chat_list_position":$mainChatListPosition
}
	""";
  }
  
  ReorderChatFilters copyWith({
    List<int>? chatFilterIds,
    int? mainChatListPosition,
  }) => ReorderChatFilters(
    chatFilterIds: chatFilterIds ?? this.chatFilterIds,
    mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'reorderChatFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
