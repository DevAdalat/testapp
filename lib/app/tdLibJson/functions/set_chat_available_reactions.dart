part of '../tdlibjson_api.dart';

class SetChatAvailableReactions extends TdFunction {
  /// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
  const SetChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [availableReactions] Reactions available in the chat. All emoji reactions must be active
  final ChatAvailableReactions availableReactions;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "available_reactions":"${availableReactions.toJson()}"
}
	""";
  }

  SetChatAvailableReactions copyWith({
    int? chatId,
    ChatAvailableReactions? availableReactions,
  }) =>
      SetChatAvailableReactions(
        chatId: chatId ?? this.chatId,
        availableReactions: availableReactions ?? this.availableReactions,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatAvailableReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
