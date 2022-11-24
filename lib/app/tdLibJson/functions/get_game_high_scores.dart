part of '../tdlibjson_api.dart';

class GetGameHighScores extends TdFunction {

  /// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
  const GetGameHighScores({
    required this.chatId,
    required this.messageId,
    required this.userId,
  });
  
  /// [chatId] The chat that contains the message with the game 
  final int chatId;

  /// [messageId] Identifier of the message 
  final int messageId;

  /// [userId] User identifier
  final int userId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId,
   "user_id":$userId
}
	""";
  }
  
  GetGameHighScores copyWith({
    int? chatId,
    int? messageId,
    int? userId,
  }) => GetGameHighScores(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getGameHighScores';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
