part of '../tdlibjson_api.dart';

class GetChatPinnedMessage extends TdFunction {

  /// Returns information about a newest pinned message in the chat
  const GetChatPinnedMessage({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat the message belongs to
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
  
  GetChatPinnedMessage copyWith({
    int? chatId,
  }) => GetChatPinnedMessage(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatPinnedMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
