part of '../tdlibjson_api.dart';

class GetMessageLocally extends TdFunction {

  /// Returns information about a message, if it is available without sending network request. This is an offline request
  const GetMessageLocally({
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
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId
}
	""";
  }
  
  GetMessageLocally copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageLocally(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessageLocally';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
