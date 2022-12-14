part of '../tdlibjson_api.dart';

class SetChatSlowModeDelay extends TdFunction {

  /// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights
  const SetChatSlowModeDelay({
    required this.chatId,
    required this.slowModeDelay,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [slowModeDelay] New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600
  final int slowModeDelay;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "slow_mode_delay":$slowModeDelay
}
	""";
  }
  
  SetChatSlowModeDelay copyWith({
    int? chatId,
    int? slowModeDelay,
  }) => SetChatSlowModeDelay(
    chatId: chatId ?? this.chatId,
    slowModeDelay: slowModeDelay ?? this.slowModeDelay,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatSlowModeDelay';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
