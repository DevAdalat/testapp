part of '../tdlibjson_api.dart';

class GetChats extends TdFunction {

  /// Returns an ordered list of chats from the beginning of a chat list. For informational purposes only. Use loadChats and updates processing instead to maintain chat lists in a consistent state
  const GetChats({
    this.chatList,
    required this.limit,
  });
  
  /// [chatList] The chat list in which to return chats; pass null to get chats from the main chat list
  final ChatList? chatList;

  /// [limit] The maximum number of chats to be returned
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_list":${chatList?.toJson()},
   "limit":$limit
}
	""";
  }
  
  GetChats copyWith({
    ChatList? chatList,
    int? limit,
  }) => GetChats(
    chatList: chatList ?? this.chatList,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
