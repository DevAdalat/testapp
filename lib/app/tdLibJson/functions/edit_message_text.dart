part of '../tdlibjson_api.dart';

class EditMessageText extends TdFunction {
  /// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side
  const EditMessageText({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type inputMessageText
  final InputMessageContent inputMessageContent;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId,
   "reply_markup":"${replyMarkup?.toJson()}",
   "input_message_content":"${inputMessageContent.toJson()}"
}
	""";
  }

  EditMessageText copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) =>
      EditMessageText(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        replyMarkup: replyMarkup ?? this.replyMarkup,
        inputMessageContent: inputMessageContent ?? this.inputMessageContent,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
