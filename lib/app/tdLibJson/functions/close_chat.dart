part of '../tdlibjson_api.dart';

class CloseChat extends TdFunction {

  /// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed
  const CloseChat({
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
  
  CloseChat copyWith({
    int? chatId,
  }) => CloseChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'closeChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
