part of '../tdlibjson_api.dart';

class GetChat extends TdFunction {

  /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
  const GetChat({
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
  
  GetChat copyWith({
    int? chatId,
  }) => GetChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
