part of '../tdlibjson_api.dart';

class DeleteMessages extends TdFunction {
  /// Deletes messages
  const DeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.revoke,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the messages to be deleted
  final List<int> messageIds;

  /// [revoke] Pass true to delete messages for all chat members. Always true for supergroups, channels and secret chats
  final bool revoke;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_ids":${messageIds.map((i) => i).toList()},
   "revoke":$revoke
}
	""";
  }

  DeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? revoke,
  }) =>
      DeleteMessages(
        chatId: chatId ?? this.chatId,
        messageIds: messageIds ?? this.messageIds,
        revoke: revoke ?? this.revoke,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
