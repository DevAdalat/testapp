part of '../tdlibjson_api.dart';

class GetChatInviteLinkCounts extends TdFunction {
  /// Returns list of chat administrators with number of their invite links. Requires owner privileges in the chat
  const GetChatInviteLinkCounts({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetChatInviteLinkCounts copyWith({
    int? chatId,
  }) =>
      GetChatInviteLinkCounts(
        chatId: chatId ?? this.chatId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatInviteLinkCounts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
