part of '../tdlibjson_api.dart';

class ToggleForumTopicIsClosed extends TdFunction {

  /// Toggles whether a topic is closed in a forum supergroup chat; requires can_manage_topics administrator rights in the supergroup unless the user is creator of the topic
  const ToggleForumTopicIsClosed({
    required this.chatId,
    required this.messageThreadId,
    required this.isClosed,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  /// [isClosed] Pass true to close the topic; pass false to reopen it
  final bool isClosed;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_thread_id":$messageThreadId,
   "is_closed":$isClosed
}
	""";
  }
  
  ToggleForumTopicIsClosed copyWith({
    int? chatId,
    int? messageThreadId,
    bool? isClosed,
  }) => ToggleForumTopicIsClosed(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    isClosed: isClosed ?? this.isClosed,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleForumTopicIsClosed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
