part of '../tdlibjson_api.dart';

class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {

  /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
  const UpgradeBasicGroupChatToSupergroupChat({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat to upgrade
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
  
  UpgradeBasicGroupChatToSupergroupChat copyWith({
    int? chatId,
  }) => UpgradeBasicGroupChatToSupergroupChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
