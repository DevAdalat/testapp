part of '../tdlibjson_api.dart';

class GetChatInviteLinkMembers extends TdFunction {

  /// Returns chat members joined a chat via an invite link. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  const GetChatInviteLinkMembers({
    required this.chatId,
    required this.inviteLink,
    this.offsetMember,
    required this.limit,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [inviteLink] Invite link for which to return chat members
  final String inviteLink;

  /// [offsetMember] A chat member from which to return next chat members; pass null to get results from the beginning
  final ChatInviteLinkMember? offsetMember;

  /// [limit] The maximum number of chat members to return; up to 100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "invite_link":"$inviteLink",
   "offset_member":${offsetMember?.toJson()},
   "limit":$limit
}
	""";
  }
  
  GetChatInviteLinkMembers copyWith({
    int? chatId,
    String? inviteLink,
    ChatInviteLinkMember? offsetMember,
    int? limit,
  }) => GetChatInviteLinkMembers(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    offsetMember: offsetMember ?? this.offsetMember,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatInviteLinkMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
