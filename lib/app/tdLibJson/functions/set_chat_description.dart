part of '../tdlibjson_api.dart';

class SetChatDescription extends TdFunction {

  /// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
  const SetChatDescription({
    required this.chatId,
    required this.description,
  });
  
  /// [chatId] Identifier of the chat 
  final int chatId;

  /// [description] New chat description; 0-255 characters
  final String description;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "description":"$description"
}
	""";
  }
  
  SetChatDescription copyWith({
    int? chatId,
    String? description,
  }) => SetChatDescription(
    chatId: chatId ?? this.chatId,
    description: description ?? this.description,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatDescription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
