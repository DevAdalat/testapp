part of '../tdlibjson_api.dart';

class OpenChat extends TdFunction {

  /// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats)
  const OpenChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId"
  }
	""";
  }
  
  OpenChat copyWith({
    int? chatId,
  }) => OpenChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'openChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
