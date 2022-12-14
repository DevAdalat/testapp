part of '../tdlibjson_api.dart';

class GetRepliedMessage extends TdFunction {

  /// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, the invoice message, and the topic creation message for messages of the types messagePinMessage, messageGameScore, messagePaymentSuccessful, and topic messages without replied message respectively
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the reply message
  final int messageId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId
}
	""";
  }
  
  GetRepliedMessage copyWith({
    int? chatId,
    int? messageId,
  }) => GetRepliedMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRepliedMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
