part of '../tdlibjson_api.dart';

class AddChatToList extends TdFunction {

  /// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
  const AddChatToList({
    required this.chatId,
    required this.chatList,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list. Use getChatListsToAddChat to get suitable chat lists
  final ChatList chatList;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "chat_list": "${chatList.toJson()}"
  }
	""";
  }
  
  AddChatToList copyWith({
    int? chatId,
    ChatList? chatList,
  }) => AddChatToList(
    chatId: chatId ?? this.chatId,
    chatList: chatList ?? this.chatList,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addChatToList';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
