part of '../tdlibjson_api.dart';

class ProcessChatJoinRequests extends TdFunction {

  /// Handles all pending join requests for a given link in a chat
  const ProcessChatJoinRequests({
    required this.chatId,
    required this.inviteLink,
    required this.approve,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to process join requests. If empty, all join requests will be processed. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  final String inviteLink;

  /// [approve] Pass true to approve all requests; pass false to decline them
  final bool approve;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "invite_link":"$inviteLink",
   "approve":$approve
}
	""";
  }
  
  ProcessChatJoinRequests copyWith({
    int? chatId,
    String? inviteLink,
    bool? approve,
  }) => ProcessChatJoinRequests(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    approve: approve ?? this.approve,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'processChatJoinRequests';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
