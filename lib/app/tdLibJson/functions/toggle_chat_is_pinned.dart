part of '../tdlibjson_api.dart';

class ToggleChatIsPinned extends TdFunction {
  /// Changes the pinned state of a chat. There can be up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/archive chat list. The limit can be increased with Telegram Premium
  const ToggleChatIsPinned({
    required this.chatList,
    required this.chatId,
    required this.isPinned,
  });

  /// [chatList] Chat list in which to change the pinned state of the chat
  final ChatList chatList;

  /// [chatId] Chat identifier
  final int chatId;

  /// [isPinned] Pass true to pin the chat; pass false to unpin it
  final bool isPinned;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_list":${chatList.toJson()},
   "chat_id":$chatId,
   "is_pinned":$isPinned
}
	""";
  }

  ToggleChatIsPinned copyWith({
    ChatList? chatList,
    int? chatId,
    bool? isPinned,
  }) =>
      ToggleChatIsPinned(
        chatList: chatList ?? this.chatList,
        chatId: chatId ?? this.chatId,
        isPinned: isPinned ?? this.isPinned,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleChatIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}