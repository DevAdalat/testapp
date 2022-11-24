part of '../tdlibjson_api.dart';

class DeleteRevokedChatInviteLink extends TdFunction {

  /// Deletes revoked chat invite links. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  const DeleteRevokedChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [inviteLink] Invite link to revoke
  final String inviteLink;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "invite_link":"$inviteLink"
}
	""";
  }
  
  DeleteRevokedChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
  }) => DeleteRevokedChatInviteLink(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteRevokedChatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
