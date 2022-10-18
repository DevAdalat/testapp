part of '../tdlibjson_api.dart';

class DeleteAllRevokedChatInviteLinks extends TdFunction {

  /// Deletes all revoked chat invite links created by a given chat administrator. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  const DeleteAllRevokedChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [creatorUserId] User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner
  final int creatorUserId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "creator_user_id": "$creatorUserId"
  }
	""";
  }
  
  DeleteAllRevokedChatInviteLinks copyWith({
    int? chatId,
    int? creatorUserId,
  }) => DeleteAllRevokedChatInviteLinks(
    chatId: chatId ?? this.chatId,
    creatorUserId: creatorUserId ?? this.creatorUserId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteAllRevokedChatInviteLinks';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
