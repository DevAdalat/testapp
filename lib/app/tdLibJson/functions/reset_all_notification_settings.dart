part of '../tdlibjson_api.dart';

class ResetAllNotificationSettings extends TdFunction {
  /// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown
  const ResetAllNotificationSettings();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  ResetAllNotificationSettings copyWith() =>
      const ResetAllNotificationSettings();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resetAllNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
