part of '../tdlibjson_api.dart';

class LeaveChat extends TdFunction {

  /// Removes the current user from chat members. Private and secret chats can't be left using this method
  const LeaveChat({
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
  
  LeaveChat copyWith({
    int? chatId,
  }) => LeaveChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'leaveChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
