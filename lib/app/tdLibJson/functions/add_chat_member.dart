part of '../tdlibjson_api.dart';

class AddChatMember extends TdFunction {

  /// Adds a new member to a chat. Members can't be added to private or secret chats
  const AddChatMember({
    required this.chatId,
    required this.userId,
    required this.forwardLimit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user 
  final int userId;

  /// [forwardLimit] The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot
  final int forwardLimit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "user_id":$userId,
   "forward_limit":$forwardLimit
}
	""";
  }
  
  AddChatMember copyWith({
    int? chatId,
    int? userId,
    int? forwardLimit,
  }) => AddChatMember(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    forwardLimit: forwardLimit ?? this.forwardLimit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addChatMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
