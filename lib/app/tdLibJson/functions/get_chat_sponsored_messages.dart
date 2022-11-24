part of '../tdlibjson_api.dart';

class GetChatSponsoredMessages extends TdFunction {

  /// Returns sponsored messages to be shown in a chat; for channel chats only
  const GetChatSponsoredMessages({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
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
  
  GetChatSponsoredMessages copyWith({
    int? chatId,
  }) => GetChatSponsoredMessages(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatSponsoredMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
