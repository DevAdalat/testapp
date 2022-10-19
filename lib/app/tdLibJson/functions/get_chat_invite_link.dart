part of '../tdlibjson_api.dart';

class GetChatInviteLink extends TdFunction {
  /// Returns information about an invite link. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
  const GetChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to get
  final String inviteLink;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "invite_link":"$inviteLink"
}
	""";
  }

  GetChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
  }) =>
      GetChatInviteLink(
        chatId: chatId ?? this.chatId,
        inviteLink: inviteLink ?? this.inviteLink,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
