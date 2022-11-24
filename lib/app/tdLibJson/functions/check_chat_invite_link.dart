part of '../tdlibjson_api.dart';

class CheckChatInviteLink extends TdFunction {

  /// Checks the validity of an invite link for a chat and returns information about the corresponding chat
  const CheckChatInviteLink({
    required this.inviteLink,
  });
  
  /// [inviteLink] Invite link to be checked
  final String inviteLink;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "invite_link":"$inviteLink"
}
	""";
  }
  
  CheckChatInviteLink copyWith({
    String? inviteLink,
  }) => CheckChatInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkChatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
