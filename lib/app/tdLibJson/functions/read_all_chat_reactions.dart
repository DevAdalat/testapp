part of '../tdlibjson_api.dart';

class ReadAllChatReactions extends TdFunction {

  /// Marks all reactions in a chat or a forum topic as read
  const ReadAllChatReactions({
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
  
  ReadAllChatReactions copyWith({
    int? chatId,
  }) => ReadAllChatReactions(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'readAllChatReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
