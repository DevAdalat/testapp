part of '../tdlibjson_api.dart';

class EditInlineMessageMedia extends TdFunction {

  /// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only
  const EditInlineMessageMedia({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
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
  
  EditInlineMessageMedia copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditInlineMessageMedia(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editInlineMessageMedia';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
