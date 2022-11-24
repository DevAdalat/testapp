part of '../tdlibjson_api.dart';

class RemoveChatActionBar extends TdFunction {

  /// Removes a chat action bar without any other action
  const RemoveChatActionBar({
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
  
  RemoveChatActionBar copyWith({
    int? chatId,
  }) => RemoveChatActionBar(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeChatActionBar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
