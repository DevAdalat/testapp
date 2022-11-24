part of '../tdlibjson_api.dart';

class ClickAnimatedEmojiMessage extends TdFunction {

  /// Informs TDLib that a message with an animated emoji was clicked by the user. Returns a big animated sticker to be played or a 404 error if usual animation needs to be played
  const ClickAnimatedEmojiMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Chat identifier of the message 
  final int chatId;

  /// [messageId] Identifier of the clicked message
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
  
  ClickAnimatedEmojiMessage copyWith({
    int? chatId,
    int? messageId,
  }) => ClickAnimatedEmojiMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clickAnimatedEmojiMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
