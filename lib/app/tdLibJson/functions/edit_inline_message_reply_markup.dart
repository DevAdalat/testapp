part of '../tdlibjson_api.dart';

class EditInlineMessageReplyMarkup extends TdFunction {
  /// Edits the reply markup of an inline message sent via a bot; for bots only
  const EditInlineMessageReplyMarkup({
    required this.inlineMessageId,
    this.replyMarkup,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "inline_message_id":"$inlineMessageId",
   "reply_markup":${replyMarkup?.toJson()}
}
	""";
  }

  EditInlineMessageReplyMarkup copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
  }) =>
      EditInlineMessageReplyMarkup(
        inlineMessageId: inlineMessageId ?? this.inlineMessageId,
        replyMarkup: replyMarkup ?? this.replyMarkup,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editInlineMessageReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
