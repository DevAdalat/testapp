part of '../tdlibjson_api.dart';

class JoinChat extends TdFunction {

  /// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method. May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created
  const JoinChat({
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
  
  JoinChat copyWith({
    int? chatId,
  }) => JoinChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'joinChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
