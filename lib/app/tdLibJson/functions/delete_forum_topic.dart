part of '../tdlibjson_api.dart';

class DeleteForumTopic extends TdFunction {

  /// Deletes all messages in a forum topic; requires can_delete_messages administrator rights in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages
  const DeleteForumTopic({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_thread_id":$messageThreadId
}
	""";
  }
  
  DeleteForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) => DeleteForumTopic(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteForumTopic';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
