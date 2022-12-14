part of '../tdlibjson_api.dart';

class DeleteChat extends TdFunction {

  /// Deletes a chat along with all messages in the corresponding chat for all chat members. For group chats this will release the usernames and remove all members. Use the field chat.can_be_deleted_for_all_users to find whether the method can be applied to the chat
  const DeleteChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId
}
	""";
  }
  
  DeleteChat copyWith({
    int? chatId,
  }) => DeleteChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
