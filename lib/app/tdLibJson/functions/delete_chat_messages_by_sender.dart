part of '../tdlibjson_api.dart';

class DeleteChatMessagesBySender extends TdFunction {

  /// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
  const DeleteChatMessagesBySender({
    required this.chatId,
    required this.senderId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [senderId] Identifier of the sender of messages to delete
  final MessageSender senderId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "sender_id":${senderId.toJson()}
}
	""";
  }
  
  DeleteChatMessagesBySender copyWith({
    int? chatId,
    MessageSender? senderId,
  }) => DeleteChatMessagesBySender(
    chatId: chatId ?? this.chatId,
    senderId: senderId ?? this.senderId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteChatMessagesBySender';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
