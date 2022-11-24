part of '../tdlibjson_api.dart';

class DeleteChatReplyMarkup extends TdFunction {

  /// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup is changed
  const DeleteChatReplyMarkup({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier of the used keyboard
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
  
  DeleteChatReplyMarkup copyWith({
    int? chatId,
    int? messageId,
  }) => DeleteChatReplyMarkup(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteChatReplyMarkup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
