part of '../tdlibjson_api.dart';

class GetInlineGameHighScores extends TdFunction {
  /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
  const GetInlineGameHighScores({
    required this.inlineMessageId,
    required this.userId,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [userId] User identifier
  final int userId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "inline_message_id":"$inlineMessageId",
   "user_id":$userId
}
	""";
  }

  GetInlineGameHighScores copyWith({
    String? inlineMessageId,
    int? userId,
  }) =>
      GetInlineGameHighScores(
        inlineMessageId: inlineMessageId ?? this.inlineMessageId,
        userId: userId ?? this.userId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getInlineGameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
}
