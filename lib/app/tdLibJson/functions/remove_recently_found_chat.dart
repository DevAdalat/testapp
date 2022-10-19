part of '../tdlibjson_api.dart';

class RemoveRecentlyFoundChat extends TdFunction {
  /// Removes a chat from the list of recently found chats
  const RemoveRecentlyFoundChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat to be removed
  final int chatId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId
}
	""";
  }

  RemoveRecentlyFoundChat copyWith({
    int? chatId,
  }) =>
      RemoveRecentlyFoundChat(
        chatId: chatId ?? this.chatId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
