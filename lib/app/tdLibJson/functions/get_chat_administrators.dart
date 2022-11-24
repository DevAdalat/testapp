part of '../tdlibjson_api.dart';

class GetChatAdministrators extends TdFunction {

  /// Returns a list of administrators of the chat with their custom titles
  const GetChatAdministrators({
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
  
  GetChatAdministrators copyWith({
    int? chatId,
  }) => GetChatAdministrators(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
