part of '../tdlibjson_api.dart';

class GetMessage extends TdFunction {

  /// Returns information about a message
  const GetMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat the message belongs to 
  final int chatId;

  /// [messageId] Identifier of the message to get
  final int messageId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "message_id": "$messageId"
  }
	""";
  }
  
  GetMessage copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
