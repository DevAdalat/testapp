part of '../tdlibjson_api.dart';

class UnpinAllChatMessages extends TdFunction {

  /// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
  const UnpinAllChatMessages({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId"
  }
	""";
  }
  
  UnpinAllChatMessages copyWith({
    int? chatId,
  }) => UnpinAllChatMessages(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'unpinAllChatMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
