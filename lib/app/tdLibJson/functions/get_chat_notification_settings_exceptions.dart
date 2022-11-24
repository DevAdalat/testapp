part of '../tdlibjson_api.dart';

class GetChatNotificationSettingsExceptions extends TdFunction {

  /// Returns list of chats with non-default notification settings
  const GetChatNotificationSettingsExceptions({
    this.scope,
    required this.compareSound,
  });
  
  /// [scope] If specified, only chats from the scope will be returned; pass null to return chats from all scopes
  final NotificationSettingsScope? scope;

  /// [compareSound] Pass true to include in the response chats with only non-default sound
  final bool compareSound;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "scope":${scope?.toJson()},
   "compare_sound":$compareSound
}
	""";
  }
  
  GetChatNotificationSettingsExceptions copyWith({
    NotificationSettingsScope? scope,
    bool? compareSound,
  }) => GetChatNotificationSettingsExceptions(
    scope: scope ?? this.scope,
    compareSound: compareSound ?? this.compareSound,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatNotificationSettingsExceptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
