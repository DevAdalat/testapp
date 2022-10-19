part of '../tdlibjson_api.dart';

class SetChatTheme extends TdFunction {
  /// Changes the chat theme. Supported only in private and secret chats
  const SetChatTheme({
    required this.chatId,
    required this.themeName,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [themeName] Name of the new chat theme; pass an empty string to return the default theme
  final String themeName;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "theme_name":"$themeName"
}
	""";
  }

  SetChatTheme copyWith({
    int? chatId,
    String? themeName,
  }) =>
      SetChatTheme(
        chatId: chatId ?? this.chatId,
        themeName: themeName ?? this.themeName,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatTheme';

  @override
  String getConstructor() => CONSTRUCTOR;
}
