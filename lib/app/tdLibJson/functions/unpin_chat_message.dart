part of '../tdlibjson_api.dart';

class UnpinChatMessage extends TdFunction {

  /// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
  const UnpinChatMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat 
  final int chatId;

  /// [messageId] Identifier of the removed pinned message
  final int messageId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "message_id": "$messageId"
  }
	""";
  }
  
  UnpinChatMessage copyWith({
    int? chatId,
    int? messageId,
  }) => UnpinChatMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'unpinChatMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
