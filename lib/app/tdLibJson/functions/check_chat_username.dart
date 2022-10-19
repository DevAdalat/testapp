part of '../tdlibjson_api.dart';

class CheckChatUsername extends TdFunction {
  /// Checks whether a username can be set for a chat
  const CheckChatUsername({
    required this.chatId,
    required this.username,
  });

  /// [chatId] Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if the chat is being created
  final int chatId;

  /// [username] Username to be checked
  final String username;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "username":"$username"
}
	""";
  }

  CheckChatUsername copyWith({
    int? chatId,
    String? username,
  }) =>
      CheckChatUsername(
        chatId: chatId ?? this.chatId,
        username: username ?? this.username,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkChatUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}
