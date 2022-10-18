part of '../tdlibjson_api.dart';

class StopPoll extends TdFunction {

  /// Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set
  const StopPoll({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });
  
  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "message_id": "$messageId",
    "reply_markup": "${replyMarkup?.toJson()}"
  }
	""";
  }
  
  StopPoll copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
  }) => StopPoll(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stopPoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
