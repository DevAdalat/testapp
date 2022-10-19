part of '../tdlibjson_api.dart';

class GetChatAvailableMessageSenders extends TdFunction {
  /// Returns list of message sender identifiers, which can be used to send messages in a chat
  const GetChatAvailableMessageSenders({
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

  GetChatAvailableMessageSenders copyWith({
    int? chatId,
  }) =>
      GetChatAvailableMessageSenders(
        chatId: chatId ?? this.chatId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatAvailableMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
