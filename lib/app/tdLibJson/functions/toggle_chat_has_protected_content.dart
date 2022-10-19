part of '../tdlibjson_api.dart';

class ToggleChatHasProtectedContent extends TdFunction {
  /// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges
  const ToggleChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "has_protected_content":$hasProtectedContent
}
	""";
  }

  ToggleChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
  }) =>
      ToggleChatHasProtectedContent(
        chatId: chatId ?? this.chatId,
        hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleChatHasProtectedContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}
