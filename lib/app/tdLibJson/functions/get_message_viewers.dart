part of '../tdlibjson_api.dart';

class GetMessageViewers extends TdFunction {

  /// Returns viewers of a recent outgoing message in a basic group or a supergroup chat. For video notes and voice notes only users, opened content of the message, are returned. The method can be called if message.can_get_viewers == true
  const GetMessageViewers({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Identifier of the message
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
  
  GetMessageViewers copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageViewers(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessageViewers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
