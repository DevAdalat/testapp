part of '../tdlibjson_api.dart';

class SetChatNotificationSettings extends TdFunction {

  /// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
  const SetChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] New notification settings for the chat. If the chat is muted for more than 366 days, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "notification_settings":${notificationSettings.toJson()}
}
	""";
  }
  
  SetChatNotificationSettings copyWith({
    int? chatId,
    ChatNotificationSettings? notificationSettings,
  }) => SetChatNotificationSettings(
    chatId: chatId ?? this.chatId,
    notificationSettings: notificationSettings ?? this.notificationSettings,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
