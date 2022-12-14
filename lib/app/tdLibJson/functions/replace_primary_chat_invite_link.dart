part of '../tdlibjson_api.dart';

class ReplacePrimaryChatInviteLink extends TdFunction {

  /// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
  const ReplacePrimaryChatInviteLink({
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
  
  ReplacePrimaryChatInviteLink copyWith({
    int? chatId,
  }) => ReplacePrimaryChatInviteLink(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'replacePrimaryChatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
