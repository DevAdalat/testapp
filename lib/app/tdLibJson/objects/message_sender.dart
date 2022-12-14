part of '../tdlibjson_api.dart';

class MessageSender extends TdObject {

  /// Contains information about the sender of a message
  const MessageSender();
  
  /// a MessageSender return type can be :
  /// * [MessageSenderUser]
  /// * [MessageSenderChat]
  factory MessageSender.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSenderUser.CONSTRUCTOR:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.CONSTRUCTOR:
        return MessageSenderChat.fromJson(json);
      default:
        return const MessageSender();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
}
	""";
  }
  
  MessageSender copyWith() => const MessageSender();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSender';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSenderUser extends MessageSender {

  /// The message was sent by a known user
  const MessageSenderUser({
    required this.userId,
  });
  
  /// [userId] Identifier of the user that sent the message
  final int userId;
  
  /// Parse from a json
  factory MessageSenderUser.fromJson(Map<String, dynamic> json) => MessageSenderUser(
    userId: json['user_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId
}
	""";
  }
  
  @override
  MessageSenderUser copyWith({
    int? userId,
  }) => MessageSenderUser(
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSenderUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSenderChat extends MessageSender {

  /// The message was sent on behalf of a chat
  const MessageSenderChat({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat that sent the message
  final int chatId;
  
  /// Parse from a json
  factory MessageSenderChat.fromJson(Map<String, dynamic> json) => MessageSenderChat(
    chatId: json['chat_id'],
  );
  
  
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
  
  @override
  MessageSenderChat copyWith({
    int? chatId,
  }) => MessageSenderChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSenderChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
