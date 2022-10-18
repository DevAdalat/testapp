part of '../tdlibjson_api.dart';

class JoinChatByInviteLink extends TdFunction {

  /// Uses an invite link to add the current user to the chat if possible. May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created
  const JoinChatByInviteLink({
    required this.inviteLink,
  });
  
  /// [inviteLink] Invite link to use
  final String inviteLink;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "invite_link": "$inviteLink"
  }
	""";
  }
  
  JoinChatByInviteLink copyWith({
    String? inviteLink,
  }) => JoinChatByInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'joinChatByInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
