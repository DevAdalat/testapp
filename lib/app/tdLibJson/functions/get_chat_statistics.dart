part of '../tdlibjson_api.dart';

class GetChatStatistics extends TdFunction {
  /// Returns detailed statistics about a chat. Currently, this method can be used only for supergroups and channels. Can be used only if supergroupFullInfo.can_get_statistics == true
  const GetChatStatistics({
    required this.chatId,
    required this.isDark,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "is_dark":$isDark
}
	""";
  }

  GetChatStatistics copyWith({
    int? chatId,
    bool? isDark,
  }) =>
      GetChatStatistics(
        chatId: chatId ?? this.chatId,
        isDark: isDark ?? this.isDark,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
