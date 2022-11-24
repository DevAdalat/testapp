part of '../tdlibjson_api.dart';

class EditInlineMessageText extends TdFunction {

  /// Edits the text of an inline text or game message sent via a bot; for bots only
  const EditInlineMessageText({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type inputMessageText
  final InputMessageContent inputMessageContent;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "inline_message_id":"$inlineMessageId",
   "reply_markup":${replyMarkup?.toJson()},
   "input_message_content":${inputMessageContent.toJson()}
}
	""";
  }
  
  EditInlineMessageText copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditInlineMessageText(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editInlineMessageText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
