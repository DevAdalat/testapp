part of '../tdlibjson_api.dart';

class ProcessChatJoinRequest extends TdFunction {

  /// Handles a pending join request in a chat
  const ProcessChatJoinRequest({
    required this.chatId,
    required this.userId,
    required this.approve,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [userId] Identifier of the user that sent the request 
  final int userId;

  /// [approve] Pass true to approve the request; pass false to decline it
  final bool approve;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "user_id":$userId,
   "approve":$approve
}
	""";
  }
  
  ProcessChatJoinRequest copyWith({
    int? chatId,
    int? userId,
    bool? approve,
  }) => ProcessChatJoinRequest(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    approve: approve ?? this.approve,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'processChatJoinRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
