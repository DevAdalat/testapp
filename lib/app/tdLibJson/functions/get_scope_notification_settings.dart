part of '../tdlibjson_api.dart';

class GetScopeNotificationSettings extends TdFunction {

  /// Returns the notification settings for chats of a given type
  const GetScopeNotificationSettings({
    required this.scope,
  });
  
  /// [scope] Types of chats for which to return the notification settings information
  final NotificationSettingsScope scope;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "scope": "${scope.toJson()}"
  }
	""";
  }
  
  GetScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
  }) => GetScopeNotificationSettings(
    scope: scope ?? this.scope,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getScopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
