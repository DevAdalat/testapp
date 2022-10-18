part of '../tdlibjson_api.dart';

class GetChatSponsoredMessage extends TdFunction {

  /// Returns sponsored message to be shown in a chat; for channel chats only. Returns a 404 error if there is no sponsored message in the chat
  const GetChatSponsoredMessage({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId"
  }
	""";
  }
  
  GetChatSponsoredMessage copyWith({
    int? chatId,
  }) => GetChatSponsoredMessage(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatSponsoredMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
