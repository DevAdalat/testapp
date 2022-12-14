part of '../tdlibjson_api.dart';

class ReadAllChatMentions extends TdFunction {

  /// Marks all mentions in a chat as read
  const ReadAllChatMentions({
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
  
  ReadAllChatMentions copyWith({
    int? chatId,
  }) => ReadAllChatMentions(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'readAllChatMentions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
