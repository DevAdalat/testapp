part of '../tdlibjson_api.dart';

class ReadAllMessageThreadReactions extends TdFunction {

  /// Marks all reactions in a forum topic as read
  const ReadAllMessageThreadReactions({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageThreadId] Message thread identifier in which reactions are marked as read
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
  
  ReadAllMessageThreadReactions copyWith({
    int? chatId,
    int? messageThreadId,
  }) => ReadAllMessageThreadReactions(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'readAllMessageThreadReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
