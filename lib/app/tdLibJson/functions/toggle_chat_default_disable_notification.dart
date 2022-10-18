part of '../tdlibjson_api.dart';

class ToggleChatDefaultDisableNotification extends TdFunction {

  /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
  const ToggleChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [defaultDisableNotification] New value of default_disable_notification
  final bool defaultDisableNotification;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "default_disable_notification": $defaultDisableNotification
  }
	""";
  }
  
  ToggleChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
  }) => ToggleChatDefaultDisableNotification(
    chatId: chatId ?? this.chatId,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleChatDefaultDisableNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
