part of '../tdlibjson_api.dart';

class GetMessageAvailableReactions extends TdFunction {

  /// Returns reactions, which can be added to a message. The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or updateMessageInteractionInfo for the message
  const GetMessageAvailableReactions({
    required this.chatId,
    required this.messageId,
    required this.rowSize,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [rowSize] Number of reaction per row, 5-25
  final int rowSize;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId,
   "row_size":$rowSize
}
	""";
  }
  
  GetMessageAvailableReactions copyWith({
    int? chatId,
    int? messageId,
    int? rowSize,
  }) => GetMessageAvailableReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    rowSize: rowSize ?? this.rowSize,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessageAvailableReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
