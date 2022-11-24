part of '../tdlibjson_api.dart';

class GetChatListsToAddChat extends TdFunction {

  /// Returns chat lists to which the chat can be added. This is an offline request
  const GetChatListsToAddChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId
}
	""";
  }
  
  GetChatListsToAddChat copyWith({
    int? chatId,
  }) => GetChatListsToAddChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatListsToAddChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
