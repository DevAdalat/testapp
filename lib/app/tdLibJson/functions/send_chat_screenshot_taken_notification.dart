part of '../tdlibjson_api.dart';

class SendChatScreenshotTakenNotification extends TdFunction {
  /// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
  const SendChatScreenshotTakenNotification({
    required this.chatId,
  });

  /// [chatId] Chat identifier
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

  SendChatScreenshotTakenNotification copyWith({
    int? chatId,
  }) =>
      SendChatScreenshotTakenNotification(
        chatId: chatId ?? this.chatId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendChatScreenshotTakenNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
