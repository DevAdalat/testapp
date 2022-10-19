part of '../tdlibjson_api.dart';

class SetChatTitle extends TdFunction {
  /// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
  const SetChatTitle({
    required this.chatId,
    required this.title,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] New title of the chat; 1-128 characters
  final String title;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "title":"$title"
}
	""";
  }

  SetChatTitle copyWith({
    int? chatId,
    String? title,
  }) =>
      SetChatTitle(
        chatId: chatId ?? this.chatId,
        title: title ?? this.title,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}
